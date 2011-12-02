.class public abstract Lcom/android/music/list/view/AbstractMpListView;
.super Landroid/widget/ListView;
.source "AbstractMpListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;,
        Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;,
        Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;,
        Lcom/android/music/list/view/AbstractMpListView$musicHandler;
    }
.end annotation


# static fields
.field public static final CHECKALL:I = -0x3e7

.field public static final CREATELIST:I = -0x3e6

.field private static final FILTER_TYPE_INT:I = 0x1

.field private static final FILTER_TYPE_NONE:I = 0x0

.field private static final FILTER_TYPE_STR:I = 0x2

.field private static final LIST_PLAY_UPDATE_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = null

.field public static final UPDATE:I = 0x0

.field public static final UPDATECHECK:I = 0x1

.field public static final UPDATEEXIT:I = 0x2

.field public static final UPDATERESUME:I = 0x3

.field public static currentPlayIndex:I

.field public static icon:I

.field public static isMusicHandlerRun:Z

.field public static mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

.field protected static mHandlerTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field public static mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

.field public static mPlayingMediaId:I

.field private static mSync:Ljava/lang/String;

.field public static max:I

.field public static musicChange:Z

.field public static oldPlayIndex:Ljava/lang/String;

.field public static oldmListType:I

.field public static oldsubTag:Ljava/lang/String;

.field public static position:I


# instance fields
.field private drmManager:Lcom/android/music/common/manager/MusicDrmManager;

.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mCheckListType:I

.field public mConditions:[Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mHasCheck:Z

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field public mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

.field protected mListType:I

.field protected mListView:Lcom/android/music/list/view/AbstractMpListView;

.field private mMusicDB:Lcom/android/music/common/data/MusicDB;

.field private mNotMergedCursor:Landroid/database/Cursor;

.field protected mOptionMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupHandler:Landroid/os/Handler;

.field private mPopupId:I

.field protected mSoftKey1:Landroid/widget/Button;

.field protected mSoftKey2:Landroid/widget/Button;

.field protected mSubCheck:Z

.field private mTempCheck:[Z

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    const-class v0, Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->TAG:Ljava/lang/String;

    .line 101
    sput-object v2, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 102
    sput v3, Lcom/android/music/list/view/AbstractMpListView;->mPlayingMediaId:I

    .line 103
    sput v3, Lcom/android/music/list/view/AbstractMpListView;->currentPlayIndex:I

    .line 104
    sput v3, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 105
    const-string v0, ""

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    .line 106
    sput-object v2, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    .line 107
    sput-object v2, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 108
    sput-boolean v1, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 109
    sput v1, Lcom/android/music/list/view/AbstractMpListView;->position:I

    sput v1, Lcom/android/music/list/view/AbstractMpListView;->max:I

    sput v1, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 110
    sput-object v2, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 111
    sput-boolean v1, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 118
    const-string v0, "SYNC"

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mSync:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZI[Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "listType"
    .parameter "hasCheck"
    .parameter "checkListType"
    .parameter "con"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 863
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2341
    new-instance v1, Lcom/android/music/list/view/AbstractMpListView$3;

    invoke-direct {v1, p0}, Lcom/android/music/list/view/AbstractMpListView$3;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mPopupHandler:Landroid/os/Handler;

    .line 864
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .line 865
    iput p2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    .line 866
    iput p4, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    .line 867
    iput-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 868
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 870
    new-instance v1, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 871
    invoke-virtual {p0, p3, p2}, Lcom/android/music/list/view/AbstractMpListView;->showCheck(ZI)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 872
    iput-boolean p3, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    .line 881
    :goto_0
    iput-object p5, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    .line 882
    const-string v0, ""

    .line 883
    .local v0, subTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 885
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 887
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v0, v1, v3

    .line 890
    :cond_0
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    .line 891
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    .line 893
    :cond_1
    iget-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v1, :cond_2

    .line 896
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 903
    invoke-virtual {p0, p0}, Lcom/android/music/list/view/AbstractMpListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 906
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/music/list/activity/MpListActivity;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/music/list/activity/MpSearchResultActivity;

    if-eqz v1, :cond_4

    .line 907
    :cond_3
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter()Z

    .line 910
    :cond_4
    return-void

    .line 873
    .end local v0           #subTag:Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_6

    .line 874
    iput-boolean v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    .line 875
    iput-boolean v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    goto :goto_0

    .line 877
    :cond_6
    iput-boolean v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    .line 878
    iput-boolean v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mSync:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/list/view/AbstractMpListView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mPopupHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static clearStatics()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 133
    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 134
    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    .line 135
    sput-boolean v0, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 136
    sput v0, Lcom/android/music/list/view/AbstractMpListView;->position:I

    .line 137
    sput v0, Lcom/android/music/list/view/AbstractMpListView;->max:I

    .line 138
    sput v0, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 139
    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 140
    sput-boolean v0, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 142
    sput-object v1, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    .line 143
    return-void
.end method

.method private playMusic(IIILjava/lang/String;Landroid/database/Cursor;)V
    .locals 22
    .parameter "index"
    .parameter "listType"
    .parameter "idType"
    .parameter "filterId"
    .parameter "playCursor"

    .prologue
    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v4, v0

    check-cast v4, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface {v4}, Lcom/android/music/list/interfaces/MpCorePlayer;->GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v15

    .line 1422
    .local v15, mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1424
    const/4 v7, -0x1

    .line 1425
    .local v7, listId:I
    const/4 v8, 0x0

    .line 1426
    .local v8, listName:Ljava/lang/String;
    if-nez p3, :cond_2

    .line 1427
    const/4 v7, -0x1

    .line 1428
    const/4 v8, 0x0

    .line 1457
    :goto_0
    if-eqz v15, :cond_0

    .line 1458
    :try_start_0
    invoke-interface {v15}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMediaAudioId()I

    move-result v4

    sput v4, Lcom/android/music/list/view/AbstractMpListView;->mPlayingMediaId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1464
    :cond_0
    :goto_1
    sget v4, Lcom/android/music/list/view/AbstractMpListView;->mPlayingMediaId:I

    invoke-static/range {p2 .. p2}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p5

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    sget v4, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move/from16 v0, p2

    move v1, v4

    if-ne v0, v1, :cond_4

    .line 1467
    invoke-direct/range {p0 .. p0}, Lcom/android/music/list/view/AbstractMpListView;->startMusicPlayer()V

    .line 1565
    .end local p0
    .end local p1
    :cond_1
    :goto_2
    return-void

    .line 1429
    .restart local p0
    .restart local p1
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 1430
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1431
    const/4 v8, 0x0

    goto :goto_0

    .line 1433
    :cond_3
    const/4 v7, -0x1

    .line 1434
    move-object/from16 v8, p4

    goto :goto_0

    .line 1459
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 1461
    .local v12, e1:Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1470
    .end local v12           #e1:Landroid/os/RemoteException;
    :cond_4
    if-eqz v15, :cond_1

    .line 1473
    :try_start_1
    const-string v4, "_id"

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p5

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1474
    .local v5, id:I
    const-string v4, "_data"

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p5

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1475
    .local v14, filePath:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1476
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1477
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1556
    .end local v5           #id:I
    .end local v13           #file:Ljava/io/File;
    .end local v14           #filePath:Ljava/lang/String;
    .end local p1
    :catch_1
    move-exception v4

    move-object v11, v4

    .line 1557
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1563
    .end local v11           #e:Landroid/os/RemoteException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface/range {p0 .. p0}, Lcom/android/music/list/interfaces/MpCorePlayer;->checkPlayButtonEnable()V

    goto :goto_2

    .line 1478
    .restart local v5       #id:I
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #filePath:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_5
    :try_start_2
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 1480
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v4, v0

    invoke-virtual {v4, v14}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1481
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1482
    .local v18, popupStr:[I
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    move-object/from16 v20, v0

    .line 1483
    .local v20, softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v4, v0

    const/4 v6, 0x1

    move-object v0, v4

    move v1, v6

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v19

    .line 1484
    .local v19, popupType:I
    if-nez v19, :cond_6

    .line 1486
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 1489
    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/music/list/view/AbstractMpListView;->startMusicPlayer(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1558
    .end local v5           #id:I
    .end local v13           #file:Ljava/io/File;
    .end local v14           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    .end local p1
    :catch_2
    move-exception v4

    move-object v11, v4

    .line 1559
    .local v11, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0a0043

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 1491
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .restart local v5       #id:I
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #filePath:Ljava/lang/String;
    .restart local v18       #popupStr:[I
    .restart local v19       #popupType:I
    .restart local v20       #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .restart local v21       #uri:Landroid/net/Uri;
    .restart local p1
    :cond_6
    :try_start_3
    new-instance v17, Lcom/android/music/common/util/DrmPopupData;

    invoke-direct/range {v17 .. v17}, Lcom/android/music/common/util/DrmPopupData;-><init>()V

    .line 1492
    .local v17, popupData:Lcom/android/music/common/util/DrmPopupData;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 1494
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 1495
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupUri:Landroid/net/Uri;

    .line 1496
    move-object v0, v14

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 1497
    const/4 v4, 0x4

    move v0, v4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 1498
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1500
    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->id:I

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v17

    move-object v1, v4

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/util/DrmPopupData;->setFilter([Ljava/lang/String;I)V

    .line 1503
    new-instance v16, Lcom/android/music/common/util/DrmServicePopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 1504
    .local v16, popup:Lcom/android/music/common/util/DrmServicePopup;
    invoke-virtual/range {v16 .. v16}, Lcom/android/music/common/util/DrmServicePopup;->show()V

    .line 1506
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    goto/16 :goto_3

    .line 1510
    .end local v16           #popup:Lcom/android/music/common/util/DrmServicePopup;
    .end local v17           #popupData:Lcom/android/music/common/util/DrmPopupData;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move v4, v0

    const/4 v6, 0x7

    if-ne v4, v6, :cond_8

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    .line 1527
    :cond_8
    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/music/list/view/AbstractMpListView;->startMusicPlayer(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3
.end method

.method private playMusic(IILjava/lang/String;)V
    .locals 6
    .parameter "index"
    .parameter "idType"
    .parameter "filterId"

    .prologue
    .line 1416
    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    iget-object v5, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/AbstractMpListView;->playMusic(IIILjava/lang/String;Landroid/database/Cursor;)V

    .line 1417
    return-void
.end method

.method private startMusicPlayer()V
    .locals 5

    .prologue
    const-string v4, "musicplayer.action"

    .line 1346
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1347
    .local v0, i:Landroid/content/Intent;
    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 1348
    const-string v2, "musicplayer.action"

    const-string v2, "Search"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1351
    :goto_0
    const-string v2, "FromList"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1352
    const/high16 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1353
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/android/music/list/activity/MpListActivity;

    if-eqz v2, :cond_0

    .line 1355
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v2}, Lcom/android/music/list/activity/MpListActivity;->getIndexOfMainListType()I

    move-result v1

    .line 1356
    .local v1, iIndexOfMainListType:I
    const-string v2, "IndexOfMainlistType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1359
    .end local v1           #iIndexOfMainListType:I
    :cond_0
    const-string v2, "setPlayIterator.play"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1360
    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 1361
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1373
    :cond_1
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1375
    return-void

    .line 1350
    :cond_2
    const-string v2, "musicplayer.action"

    const-string v2, "Library"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startMusicPlayer(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "id"
    .parameter "listType"
    .parameter "filterId"
    .parameter "strFilter"
    .parameter "filterId2"
    .parameter "strFilter2"

    .prologue
    const/4 v4, 0x1

    const-string v5, "musicplayer.action"

    .line 1378
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1379
    .local v0, i:Landroid/content/Intent;
    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 1380
    const-string v2, "musicplayer.action"

    const-string v2, "Search"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1383
    :goto_0
    const-string v2, "FromList"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1384
    const/high16 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1385
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/android/music/list/activity/MpListActivity;

    if-eqz v2, :cond_0

    .line 1387
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v2}, Lcom/android/music/list/activity/MpListActivity;->getIndexOfMainListType()I

    move-result v1

    .line 1388
    .local v1, iIndexOfMainListType:I
    const-string v2, "IndexOfMainlistType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1392
    .end local v1           #iIndexOfMainListType:I
    :cond_0
    const-string v2, "setPlayIterator.play"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1393
    const-string v2, "setPlayIterator.id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1394
    const-string v2, "setPlayIterator.listType"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1395
    const-string v2, "setPlayIterator.filterId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1396
    const-string v2, "setPlayIterator.strFilter"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    const-string v2, "setPlayIterator.filterId2"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1398
    const-string v2, "setPlayIterator.strFilter2"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1401
    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 1402
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1413
    :cond_1
    return-void

    .line 1382
    .restart local p0
    :cond_2
    const-string v2, "musicplayer.action"

    const-string v2, "Library"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public GetCreateMusicHandler()Lcom/android/music/list/view/AbstractMpListView$musicHandler;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "_"

    .line 158
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 163
    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_0
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-nez v0, :cond_1

    .line 178
    const-string v0, "TAG"

    const-string v1, "HasCheck new musicHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-direct {v0, p0}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 181
    :cond_1
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    return-object v0

    .line 166
    :cond_2
    sput-object p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_0

    .line 170
    :cond_3
    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v0, :cond_4

    .line 171
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_4
    sput-object p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_0
.end method

.method public canDeleteItem(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 2308
    iget v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    if-ne v1, v2, :cond_0

    move v1, v3

    .line 2315
    :goto_0
    return v1

    .line 2310
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface {v1}, Lcom/android/music/list/interfaces/MpCorePlayer;->GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 2311
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2313
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2315
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-ne v1, v2, :cond_2

    sget v1, Lcom/android/music/list/view/AbstractMpListView;->mPlayingMediaId:I

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-static {v2}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 930
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/android/music/list/adapter/MpListGroupAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0, p1}, Lcom/android/music/list/interfaces/MpSetViewInterface;->reset(Landroid/database/Cursor;)V

    .line 936
    :goto_0
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 938
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/music/list/adapter/AbstractMpListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public clearAdapter()V
    .locals 2

    .prologue
    .line 2204
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    if-eqz v0, :cond_0

    .line 2205
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpImageDataBuffer;->ClearLoadImage()V

    .line 2207
    :cond_0
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;-><init>(Lcom/android/music/list/view/AbstractMpListView;Lcom/android/music/list/view/AbstractMpListView$1;)V

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2208
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2209
    return-void
.end method

.method public destroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 951
    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 952
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;

    invoke-direct {v0, p0, v1}, Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;-><init>(Lcom/android/music/list/view/AbstractMpListView;Lcom/android/music/list/view/AbstractMpListView$1;)V

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 953
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 954
    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 956
    return-void
.end method

.method protected abstract getCheckBoxId()I
.end method

.method public abstract getColumn()[Ljava/lang/String;
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 1923
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    return v0
.end method

.method public getNotMergedCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2412
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mNotMergedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2413
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mNotMergedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2419
    :goto_0
    return v0

    .line 2414
    :cond_0
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 2415
    goto :goto_0

    .line 2416
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 2417
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2419
    goto :goto_0
.end method

.method protected abstract initAdapter(Landroid/content/Context;Z)V
.end method

.method public initCursor(I)Landroid/database/Cursor;
    .locals 1
    .parameter "listType"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public initCursor(I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "listType"
    .parameter "conditions"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 971
    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v2

    .line 972
    .local v2, mdb:Lcom/android/music/common/data/MusicDB;
    new-instance v1, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v1}, Lcom/android/music/common/data/MpListFilter;-><init>()V

    .line 973
    .local v1, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v0, 0x0

    .line 975
    .local v0, cursor:Landroid/database/Cursor;
    const-string v3, "MpList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbstractMpListView::initCursor : listType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    packed-switch p1, :pswitch_data_0

    .line 1021
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-eqz v3, :cond_3

    .line 1022
    invoke-virtual {p0, v0, v7}, Lcom/android/music/list/view/AbstractMpListView;->mergedCursor(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1032
    :cond_0
    :goto_1
    const/16 v3, 0x19

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 1033
    iget v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {v2, v3, v6, v6, v6}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1035
    :cond_1
    return-object v0

    .line 996
    :pswitch_1
    invoke-virtual {v2, p1, v6, v6, v6}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 997
    goto :goto_0

    .line 1010
    :pswitch_2
    new-array v3, v7, [Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iput-object v3, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    .line 1011
    aget-object v3, p2, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1012
    iget-object v3, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v5, p2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v1, v7, v5, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v4, v3, v8

    .line 1018
    :goto_2
    invoke-virtual {v2, p1, v1, v6, v6}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 1015
    :cond_2
    iget-object v3, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v5, p2, v7

    invoke-direct {v4, v1, v8, v8, v5}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v4, v3, v8

    goto :goto_2

    .line 1024
    :cond_3
    if-ne p1, v9, :cond_4

    iget v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-eq v3, v7, :cond_4

    .line 1026
    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mNotMergedCursor:Landroid/database/Cursor;

    .line 1027
    invoke-virtual {v2, v0, p1}, Lcom/android/music/common/data/MusicDB;->getMergedCursor(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 1028
    :cond_4
    if-ne p1, v9, :cond_0

    iget v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-ne v3, v7, :cond_0

    .line 1029
    invoke-virtual {p0, v0, v8}, Lcom/android/music/list/view/AbstractMpListView;->mergedCursor(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initViewAdapter()Z
    .locals 8

    .prologue
    const v7, 0x7f0a0016

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2230
    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {p0, v2}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 2231
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 2232
    .local v1, status:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->initAdapter(Landroid/content/Context;Z)V

    .line 2233
    const-string v2, "AbstractMpListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initViewAdapter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2238
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/android/music/list/activity/MpMainTabActivity;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v2, :cond_0

    .line 2239
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2240
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2241
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    move v2, v6

    .line 2281
    :goto_1
    return v2

    .line 2244
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/android/music/list/activity/MediaPickerActivity;

    if-eqz v2, :cond_1

    .line 2246
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->setNoItem()V

    goto :goto_0

    .line 2248
    .restart local p0
    :cond_1
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2252
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_5

    .line 2255
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/android/music/list/activity/MpMainTabActivity;

    if-eqz v2, :cond_3

    .line 2256
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->showNoTracksView(ZLjava/lang/String;)V

    .end local p0
    :goto_2
    move v2, v6

    .line 2264
    goto :goto_1

    .line 2258
    .restart local p0
    :cond_3
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/android/music/list/activity/MediaPickerActivity;

    if-eqz v2, :cond_4

    .line 2260
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->setNoItem()V

    goto :goto_2

    .line 2262
    .restart local p0
    :cond_4
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 2266
    .restart local p0
    :cond_5
    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 2269
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/android/music/list/activity/MpMainTabActivity;

    if-eqz v2, :cond_6

    .line 2270
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->showNoTracksView(ZLjava/lang/String;)V

    .end local p0
    :goto_3
    move v2, v6

    .line 2277
    goto :goto_1

    .line 2272
    .restart local p0
    :cond_6
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/android/music/list/activity/MediaPickerActivity;

    if-eqz v2, :cond_7

    .line 2273
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->setNoItem()V

    goto :goto_3

    .line 2275
    .restart local p0
    :cond_7
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .restart local p0
    :cond_8
    move v2, v5

    .line 2281
    goto :goto_1
.end method

.method public initViewAdapter(ZLandroid/database/Cursor;)Z
    .locals 2
    .parameter "useCursor"
    .parameter "cursor"

    .prologue
    .line 2292
    if-eqz p1, :cond_1

    .line 2293
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2294
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2296
    :cond_0
    iput-object p2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 2303
    :goto_0
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->initAdapter(Landroid/content/Context;Z)V

    .line 2304
    const/4 v0, 0x1

    return v0

    .line 2298
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 2299
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2301
    :cond_2
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method protected mergedCursor(Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 13
    .parameter "c"
    .parameter "bSelectall"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 2038
    if-nez p1, :cond_0

    move-object v8, v12

    .line 2059
    :goto_0
    return-object v8

    .line 2041
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 2042
    .local v1, allColumns:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getColumn()[Ljava/lang/String;

    move-result-object v7

    .line 2043
    .local v7, useColumns:[Ljava/lang/String;
    aget-object v8, v7, v10

    if-eqz v8, :cond_1

    aget-object v8, v7, v10

    move-object v6, v8

    .line 2045
    .local v6, tempString:Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2046
    .local v5, selectall_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 2047
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v8, v1

    if-ge v4, v8, :cond_6

    .line 2048
    aget-object v8, v1, v4

    invoke-virtual {v8, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 2049
    iget-object v8, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz p2, :cond_2

    const v9, 0x7f0a0087

    :goto_3
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2047
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2043
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4           #i:I
    .end local v5           #selectall_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .end local v6           #tempString:Ljava/lang/String;
    :cond_1
    const-string v8, "title"

    move-object v6, v8

    goto :goto_1

    .line 2049
    .restart local v0       #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v4       #i:I
    .restart local v5       #selectall_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .restart local v6       #tempString:Ljava/lang/String;
    :cond_2
    const v9, 0x7f0a00ac

    goto :goto_3

    .line 2050
    :cond_3
    aget-object v8, v1, v4

    const-string v9, "_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5

    .line 2051
    if-eqz p2, :cond_4

    const/16 v8, -0x3e7

    :goto_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const/16 v8, -0x3e6

    goto :goto_5

    .line 2053
    :cond_5
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2055
    :cond_6
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    new-instance v2, Lcom/android/music/list/data/ArrayListCursor;

    invoke-direct {v2, v1, v5}, Lcom/android/music/list/data/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2058
    .local v2, autoplaylistscursor:Lcom/android/music/list/data/ArrayListCursor;
    new-instance v3, Landroid/database/MergeCursor;

    new-array v8, v11, [Landroid/database/Cursor;

    aput-object v2, v8, v10

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-direct {v3, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v3, cc:Landroid/database/Cursor;
    move-object v8, v3

    .line 2059
    goto :goto_0
.end method

.method protected moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 8
    .parameter "title"
    .parameter "listType"
    .parameter "con"

    .prologue
    const/4 v6, 0x3

    const-string v7, "PlaylistID"

    .line 1989
    const/16 v4, 0x1a

    if-eq p2, v4, :cond_0

    const/16 v4, 0x17

    if-ne p2, v4, :cond_2

    .line 1991
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1997
    .local v2, intent:Landroid/content/Intent;
    :goto_0
    const-string v4, "ListType"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1998
    const-string v4, "TitleText"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1999
    const-string v4, "Conditions"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2000
    iget-boolean v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    if-eqz v4, :cond_1

    .line 2001
    const-string v4, "Check"

    iget-boolean v5, p0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2002
    const-string v4, "CheckListType"

    iget v5, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2003
    iget-object v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2004
    .local v3, temp:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2005
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "PlaylistID"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2006
    .local v1, id:Ljava/lang/String;
    const-string v4, "PlaylistID"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2008
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #id:Ljava/lang/String;
    .end local v3           #temp:Landroid/content/Intent;
    :cond_1
    iget v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-ne v4, v6, :cond_3

    .line 2009
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2014
    :goto_1
    return-void

    .line 1995
    .end local v2           #intent:Landroid/content/Intent;
    .restart local p0
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 2011
    :cond_3
    iget-object v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 23
    .parameter
    .parameter "arg1"
    .parameter "arg2"
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
    .line 1568
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v6, Lcom/android/music/list/view/AbstractMpListView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v20

    .line 1579
    .local v20, mDB:Lcom/android/music/common/data/MusicDB;
    const/16 v19, 0x0

    .line 1580
    .local v19, mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p2, v0

    .end local p2
    check-cast p2, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface/range {p2 .. p2}, Lcom/android/music/list/interfaces/MpCorePlayer;->GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v19

    .line 1583
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    move v6, v0

    if-eqz v6, :cond_1

    .line 1586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/16 v7, 0x10

    if-ne v6, v7, :cond_0

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/list/adapter/MpListGroupAdapter;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->getPosition(I)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1591
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;->setCheckBox(I)V

    .line 1920
    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :goto_0
    return-void

    .line 1595
    .restart local p0
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1604
    :pswitch_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->playMusic(IILjava/lang/String;)V

    goto :goto_0

    .line 1626
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1627
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->playMusic(IILjava/lang/String;)V

    goto :goto_0

    .line 1629
    :cond_2
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->playMusic(IILjava/lang/String;)V

    goto :goto_0

    .line 1645
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/android/music/list/adapter/MpListGroupAdapter;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/music/list/adapter/MpListGroupAdapter;->getPosition(I)I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->playMusic(IILjava/lang/String;)V

    goto :goto_0

    .line 1664
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :pswitch_4
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1665
    .local v22, title:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1668
    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/String;

    .line 1669
    .local v14, con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v14, v6

    .line 1670
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1672
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1674
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->getSweep()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1676
    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1680
    :cond_3
    const/16 v6, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1695
    .end local v14           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :pswitch_5
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1699
    .restart local v22       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "genre_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1703
    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/String;

    .line 1704
    .restart local v14       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v14, v6

    .line 1708
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "genre_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1711
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1713
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    if-eqz v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->getSweep()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 1715
    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1719
    :cond_4
    const/16 v6, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1733
    .end local v14           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :pswitch_6
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1734
    .restart local v22       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "composer"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1736
    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/String;

    .line 1737
    .restart local v14       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v14, v6

    .line 1738
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "composer"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1740
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1742
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    if-eqz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->getSweep()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 1744
    const/16 v6, 0x14

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1748
    :cond_5
    const/16 v6, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1762
    .end local v14           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :pswitch_7
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1766
    .restart local v22       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "year_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1770
    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/String;

    .line 1771
    .restart local v14       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v14, v6

    .line 1775
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "year_name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1779
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1781
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    if-eqz v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->getSweep()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 1783
    const/16 v6, 0x15

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1787
    :cond_6
    const/16 v6, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1824
    .end local v14           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :pswitch_8
    const/4 v6, 0x3

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1825
    .restart local v22       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "album"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1827
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "artist"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1829
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1831
    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/String;

    .line 1832
    .restart local v14       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v14, v6

    .line 1833
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1835
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1837
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->getSweep()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1839
    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1843
    :cond_7
    const/16 v6, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1851
    .end local v14           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :pswitch_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    move v6, v0

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v7, -0x3e6

    if-ne v6, v7, :cond_9

    .line 1855
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v21

    .line 1856
    .local v21, musicDB:Lcom/android/music/common/data/MusicDB;
    invoke-virtual/range {v21 .. v21}, Lcom/android/music/common/data/MusicDB;->getPlaylistTotalCount()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_8

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0a00e9

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1860
    :cond_8
    const/4 v6, 0x2

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1861
    .restart local v22       #title:[Ljava/lang/String;
    const/4 v6, 0x2

    new-array v14, v6, [Ljava/lang/String;

    .line 1862
    .restart local v14       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1863
    const/16 v6, 0x17

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1866
    .end local v14           #con:[Ljava/lang/String;
    .end local v21           #musicDB:Lcom/android/music/common/data/MusicDB;
    .end local v22           #title:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move v6, v0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 1868
    .local v17, intent:Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 1869
    .local v13, bundle:Landroid/os/Bundle;
    const-string v6, "CheckedList"

    invoke-virtual {v13, v6}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v9

    .line 1870
    .local v9, bool:[Z
    const-string v6, "RootListType"

    invoke-virtual {v13, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1871
    .local v5, rootListType:I
    const-string v6, "Conditions"

    invoke-virtual {v13, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    .line 1872
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v8

    .line 1873
    .local v8, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    const-string v10, "_id"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1874
    .local v7, listID:I
    new-instance v4, Lcom/android/music/list/data/MpListFileManageThread;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mPopupHandler:Landroid/os/Handler;

    move-object v11, v0

    move-object/from16 v12, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/music/list/data/MpListFileManageThread;-><init>(IIILandroid/database/Cursor;[ZLandroid/content/Context;Landroid/os/Handler;Lcom/android/music/list/view/AbstractMpListView;)V

    .line 1875
    .local v4, thread:Lcom/android/music/list/data/MpListFileManageThread;
    invoke-virtual {v4}, Lcom/android/music/list/data/MpListFileManageThread;->start()V

    goto/16 :goto_0

    .line 1877
    .end local v4           #thread:Lcom/android/music/list/data/MpListFileManageThread;
    .end local v5           #rootListType:I
    .end local v7           #listID:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #bool:[Z
    .end local v13           #bundle:Landroid/os/Bundle;
    .end local v17           #intent:Landroid/content/Intent;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_a
    const/4 v6, 0x3

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1878
    .restart local v22       #title:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1879
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    move-object/from16 v0, v20

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/data/MusicDB;->getAlbumID(ILandroid/database/Cursor;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1880
    const/4 v6, 0x3

    new-array v14, v6, [Ljava/lang/String;

    .line 1881
    .restart local v14       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v14, v6

    .line 1883
    const/16 v15, 0xd

    .line 1884
    .local v15, iListType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1885
    .local v16, iPlaylistID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    const-string v8, "_data"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1888
    .local v18, listData:Ljava/lang/String;
    const/4 v6, -0x1

    move/from16 v0, v16

    move v1, v6

    if-ne v0, v1, :cond_c

    .line 1890
    const/4 v6, 0x1

    const-string v7, "-1"

    aput-object v7, v14, v6

    .line 1891
    const-string v6, "Music_Default_Playlist"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1897
    :goto_1
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    .line 1898
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "thumbnail_uri"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v22, v6

    .line 1903
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move v6, v0

    const/4 v7, 0x5

    if-ne v6, v7, :cond_b

    .line 1905
    const/16 v15, 0x1a

    .line 1908
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    if-eqz v6, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p1, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;->getSweep()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    .line 1910
    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1895
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_c
    const/4 v6, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v14, v6

    goto :goto_1

    .line 1913
    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v15

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method protected optionAdd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1157
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Check"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1158
    const-string v1, "PlaylistID"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1160
    return-void
.end method

.method protected optionAddToPlaylist()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1187
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1188
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    const-string v1, "ListType"

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1190
    const-string v1, "TitleText"

    const v2, 0x7f0a0034

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1191
    const-string v1, "Check"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1192
    const-string v1, "CheckListType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1193
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1194
    return-void
.end method

.method protected optionCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1115
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    .line 1116
    .local v1, musicDB:Lcom/android/music/common/data/MusicDB;
    invoke-virtual {v1}, Lcom/android/music/common/data/MusicDB;->getPlaylistTotalCount()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 1117
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00e9

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1125
    :goto_0
    return-void

    .line 1120
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1121
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ListType"

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1122
    const-string v2, "Check"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1123
    const-string v2, "TitleText"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0038

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected optionDelete()V
    .locals 3

    .prologue
    .line 1205
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1206
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1207
    const-string v1, "ListType"

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1208
    const-string v1, "TitleText"

    const v2, 0x7f0a0037

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1209
    const-string v1, "Check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1210
    const-string v1, "CheckListType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1211
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1212
    return-void
.end method

.method protected optionEdit()V
    .locals 3

    .prologue
    .line 1241
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1242
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ListType"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1243
    const-string v1, "TitleText"

    const v2, 0x7f0a0039

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1244
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1245
    const-string v1, "CheckListType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1246
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1247
    return-void
.end method

.method protected optionEditTitle()V
    .locals 3

    .prologue
    .line 1222
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ListType"

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1224
    const-string v2, "TitleText"

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpListActivity;->getListTitle()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    const-string v1, "CheckListType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1229
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1230
    return-void
.end method

.method protected optionGotoDiscplus()V
    .locals 0

    .prologue
    .line 1316
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/list/interfaces/MpHandlerInterface;

    invoke-interface {p0}, Lcom/android/music/list/interfaces/MpHandlerInterface;->launchDiscPlus()V

    .line 1317
    return-void
.end method

.method public optionMenuOperate(I)V
    .locals 0
    .parameter "menuID"

    .prologue
    .line 1046
    packed-switch p1, :pswitch_data_0

    .line 1106
    :goto_0
    :pswitch_0
    return-void

    .line 1049
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionShop()V

    goto :goto_0

    .line 1053
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionAdd()V

    goto :goto_0

    .line 1057
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionAddToPlaylist()V

    goto :goto_0

    .line 1061
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionDelete()V

    goto :goto_0

    .line 1065
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionEditTitle()V

    goto :goto_0

    .line 1070
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionEdit()V

    goto :goto_0

    .line 1074
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionMusicPlayer()V

    goto :goto_0

    .line 1078
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionRemove()V

    goto :goto_0

    .line 1082
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionSaveAsPlaylist()V

    goto :goto_0

    .line 1086
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionSearch()V

    goto :goto_0

    .line 1090
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionSettings()V

    goto :goto_0

    .line 1094
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionWishlist()V

    goto :goto_0

    .line 1097
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionCreate()V

    goto :goto_0

    .line 1100
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionReorder()V

    goto :goto_0

    .line 1103
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionGotoDiscplus()V

    goto :goto_0

    .line 1046
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_1
    .end packed-switch
.end method

.method protected optionMusicPlayer()V
    .locals 3

    .prologue
    .line 1256
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1257
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1259
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1260
    return-void
.end method

.method protected optionRemove()V
    .locals 3

    .prologue
    .line 1271
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1272
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    const-string v1, "ListType"

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1274
    const-string v1, "TitleText"

    const v2, 0x7f0a0030

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1275
    const-string v1, "Check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1276
    const-string v1, "CheckListType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1277
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1278
    return-void
.end method

.method protected optionReorder()V
    .locals 3

    .prologue
    .line 1309
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1310
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    const-string v2, "TitleText"

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpListActivity;->getListTitle()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1313
    return-void
.end method

.method protected optionSaveAsPlaylist()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1135
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    .line 1136
    .local v1, musicDB:Lcom/android/music/common/data/MusicDB;
    invoke-virtual {v1}, Lcom/android/music/common/data/MusicDB;->getPlaylistTotalCount()I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 1137
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00e9

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1145
    :goto_0
    return-void

    .line 1140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1141
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ListType"

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1142
    const-string v2, "Check"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1143
    const-string v2, "TitleText"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v5, 0x7f0a002f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1144
    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected optionSearch()V
    .locals 0

    .prologue
    .line 1287
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    .line 1288
    return-void
.end method

.method protected optionSettings()V
    .locals 3

    .prologue
    .line 1298
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1299
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1300
    return-void
.end method

.method protected optionShop()V
    .locals 3

    .prologue
    .line 1170
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->TAG:Ljava/lang/String;

    const-string v2, "Options():OPTION_SHOP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1174
    return-void
.end method

.method protected optionWishlist()V
    .locals 0

    .prologue
    .line 1343
    return-void
.end method

.method public playMusicInPopup(Z)V
    .locals 9
    .parameter "playCheck"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    .line 1927
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface {v1}, Lcom/android/music/list/interfaces/MpCorePlayer;->GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v0

    .line 1929
    .local v0, mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    const/4 v3, -0x1

    .line 1930
    .local v3, filterId:I
    const/4 v4, 0x0

    .line 1931
    .local v4, strFilter:Ljava/lang/String;
    const/4 v5, -0x1

    .line 1932
    .local v5, filterId2:I
    const/4 v6, 0x0

    .line 1935
    .local v6, strFilter2:Ljava/lang/String;
    iget v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 1964
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 1965
    if-eqz p1, :cond_1

    .line 1967
    iget v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/list/view/AbstractMpListView;->startMusicPlayer(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1976
    .end local v0           #mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :goto_1
    return-void

    .line 1950
    .restart local v0       #mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :pswitch_1
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1951
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1952
    const/4 v4, 0x0

    goto :goto_0

    .line 1954
    :cond_0
    const/4 v3, -0x1

    .line 1955
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v4, v1, v2

    .line 1957
    goto :goto_0

    .line 1959
    :pswitch_2
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 1971
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-interface/range {v0 .. v6}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1973
    .end local v0           #mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 1974
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1935
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public refreshView()V
    .locals 2

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 942
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 943
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpSetViewInterface;->reset(Landroid/database/Cursor;)V

    .line 944
    return-void
.end method

.method public resetView()V
    .locals 2

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 921
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/android/music/list/adapter/MpListGroupAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v0, :cond_0

    .line 922
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 923
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpSetViewInterface;->reset(Landroid/database/Cursor;)V

    .line 925
    :cond_0
    return-void
.end method

.method public resumeCheck()V
    .locals 2

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mTempCheck:[Z

    if-eqz v0, :cond_0

    .line 2213
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mTempCheck:[Z

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;->resumeCheckBox([Z)V

    .line 2214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mTempCheck:[Z

    .line 2216
    :cond_0
    return-void
.end method

.method public saveCheck()V
    .locals 1

    .prologue
    .line 2219
    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    invoke-interface {v0}, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;->getCheckedBoxCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2220
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getChecked()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mTempCheck:[Z

    .line 2223
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/list/view/AbstractMpListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 127
    move-object v0, p1

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    move-object v1, v0

    invoke-interface {v1, p0}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setListView(Lcom/android/music/list/view/AbstractMpListView;)V

    .line 128
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iput-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mTrackList:Landroid/widget/ListView;

    .line 130
    return-void
.end method

.method public setSoftKey(ILandroid/widget/Button;Landroid/widget/Button;)V
    .locals 2
    .parameter "checkListType"
    .parameter "left"
    .parameter "right"

    .prologue
    const v1, 0x7f0a0035

    .line 2072
    const v0, 0x7f0a00a6

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(I)V

    .line 2073
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/view/AbstractMpListView$1;-><init>(Lcom/android/music/list/view/AbstractMpListView;I)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2084
    packed-switch p1, :pswitch_data_0

    .line 2098
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2099
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;

    invoke-direct {v0, p0}, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2100
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;-><init>(Lcom/android/music/list/view/AbstractMpListView;Landroid/widget/Button;)V

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    .line 2101
    return-void

    .line 2086
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 2089
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 2092
    :pswitch_2
    const v0, 0x7f0a0037

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 2095
    :pswitch_3
    const v0, 0x7f0a0030

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 2084
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setSoftKey(Landroid/widget/Button;)V
    .locals 1
    .parameter "playerButton"

    .prologue
    .line 2122
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$2;

    invoke-direct {v0, p0}, Lcom/android/music/list/view/AbstractMpListView$2;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2130
    return-void
.end method

.method public showCheck(ZI)Z
    .locals 4
    .parameter "hasCheck"
    .parameter "listType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2025
    if-eqz p1, :cond_1

    if-lt p2, v3, :cond_0

    const/16 v0, 0x8

    if-gt p2, v0, :cond_0

    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-ne p2, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startMusicByFolder(II[Ljava/lang/String;)V
    .locals 6
    .parameter "type"
    .parameter "arg2"
    .parameter "con"

    .prologue
    const/4 v1, 0x0

    .line 1323
    invoke-virtual {p0, p1, p3}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1324
    .local v5, cursor:Landroid/database/Cursor;
    if-nez v5, :cond_0

    .line 1339
    :goto_0
    return-void

    .line 1326
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1328
    const/4 v3, 0x0

    .line 1330
    .local v3, filterType:I
    aget-object v0, p3, v1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    const/4 v3, 0x1

    .line 1336
    :goto_1
    const/4 v0, 0x1

    aget-object v4, p3, v0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/AbstractMpListView;->playMusic(IIILjava/lang/String;Landroid/database/Cursor;)V

    goto :goto_0

    .line 1333
    :cond_1
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public timerStart(I)V
    .locals 22
    .parameter "id"

    .prologue
    .line 642
    const/4 v4, 0x0

    .line 643
    .local v4, mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    const/4 v11, 0x0

    .line 644
    .local v11, Indextag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v4, v0

    .end local v4           #mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    check-cast v4, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface {v4}, Lcom/android/music/list/interfaces/MpCorePlayer;->GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v4

    .line 645
    .restart local v4       #mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-nez v4, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    sput p1, Lcom/android/music/list/view/AbstractMpListView;->currentPlayIndex:I

    .line 654
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    sget v6, Lcom/android/music/list/view/AbstractMpListView;->currentPlayIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    invoke-static {v6, v7}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 659
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    const/16 v6, 0x9

    if-ne v5, v6, :cond_3

    .line 660
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v7, v0

    invoke-static {v7}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 661
    .local v13, audioId:I
    const-string v5, "%s_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 664
    .end local v13           #audioId:I
    :cond_3
    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    sget v6, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    if-eq v5, v6, :cond_15

    .line 668
    :cond_4
    sget-object v5, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    sget v6, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    if-ne v5, v6, :cond_5

    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 670
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v5, :pswitch_data_0

    .line 748
    :pswitch_0
    if-eqz v4, :cond_6

    .line 752
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 753
    .local v12, _id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 754
    .local v15, filePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 756
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    invoke-virtual {v5, v15}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 758
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 759
    .local v18, popupStr:[I
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    move-object/from16 v20, v0

    .line 760
    .local v20, softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v19

    .line 761
    .local v19, popupType:I
    if-nez v19, :cond_10

    .line 763
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_f

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_e

    .line 767
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 837
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_6
    :goto_2
    sget-object v5, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-nez v5, :cond_0

    .line 839
    new-instance v5, Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    sput-object v5, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    goto/16 :goto_0

    .line 658
    :cond_7
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v7, v0

    invoke-static {v6, v7}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    goto/16 :goto_1

    .line 677
    :pswitch_1
    if-eqz v4, :cond_6

    .line 681
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 682
    .restart local v12       #_id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "_data"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 683
    .restart local v15       #filePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 685
    .restart local v21       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    invoke-virtual {v5, v15}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 687
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 688
    .restart local v18       #popupStr:[I
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    move-object/from16 v20, v0

    .line 689
    .restart local v20       #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    const/4 v6, 0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v19

    .line 690
    .restart local v19       #popupType:I
    if-nez v19, :cond_a

    .line 692
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_9

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    .line 696
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 736
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 738
    .local v14, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 831
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v14, v5

    .line 833
    .restart local v14       #e:Landroid/os/RemoteException;
    const-string v5, "TAG"

    const-string v6, "fail to get current media from music core player."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 698
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v12       #_id:I
    .restart local v15       #filePath:Ljava/lang/String;
    .restart local v18       #popupStr:[I
    .restart local v19       #popupType:I
    .restart local v20       #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .restart local v21       #uri:Landroid/net/Uri;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 739
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v5

    move-object v14, v5

    .line 740
    .local v14, e:Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0a0043

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 701
    .end local v14           #e:Ljava/io/FileNotFoundException;
    .restart local v12       #_id:I
    .restart local v15       #filePath:Ljava/lang/String;
    .restart local v18       #popupStr:[I
    .restart local v19       #popupType:I
    .restart local v20       #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .restart local v21       #uri:Landroid/net/Uri;
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 705
    :cond_a
    new-instance v17, Lcom/android/music/common/util/DrmPopupData;

    invoke-direct/range {v17 .. v17}, Lcom/android/music/common/util/DrmPopupData;-><init>()V

    .line 706
    .local v17, popupData:Lcom/android/music/common/util/DrmPopupData;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 708
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 709
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupUri:Landroid/net/Uri;

    .line 710
    move-object v0, v15

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 711
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/util/DrmPopupData;->setFilter([Ljava/lang/String;I)V

    .line 714
    move v0, v12

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->id:I

    .line 716
    new-instance v16, Lcom/android/music/common/util/DrmServicePopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 717
    .local v16, popup:Lcom/android/music/common/util/DrmServicePopup;
    invoke-virtual/range {v16 .. v16}, Lcom/android/music/common/util/DrmServicePopup;->show()V

    .line 719
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    goto/16 :goto_2

    .line 724
    .end local v16           #popup:Lcom/android/music/common/util/DrmServicePopup;
    .end local v17           #popupData:Lcom/android/music/common/util/DrmPopupData;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_b
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_d

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 730
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 733
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 769
    .restart local v18       #popupStr:[I
    .restart local v19       #popupType:I
    .restart local v20       #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_e
    :try_start_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    .line 807
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    :catch_3
    move-exception v5

    move-object v14, v5

    .line 809
    .local v14, e:Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    .line 772
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v12       #_id:I
    .restart local v15       #filePath:Ljava/lang/String;
    .restart local v18       #popupStr:[I
    .restart local v19       #popupType:I
    .restart local v20       #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .restart local v21       #uri:Landroid/net/Uri;
    :cond_f
    :try_start_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    .line 810
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    :catch_4
    move-exception v5

    move-object v14, v5

    .line 811
    .local v14, e:Ljava/io/FileNotFoundException;
    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0a0043

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_2

    .line 776
    .end local v14           #e:Ljava/io/FileNotFoundException;
    .restart local v12       #_id:I
    .restart local v15       #filePath:Ljava/lang/String;
    .restart local v18       #popupStr:[I
    .restart local v19       #popupType:I
    .restart local v20       #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .restart local v21       #uri:Landroid/net/Uri;
    :cond_10
    :try_start_c
    new-instance v17, Lcom/android/music/common/util/DrmPopupData;

    invoke-direct/range {v17 .. v17}, Lcom/android/music/common/util/DrmPopupData;-><init>()V

    .line 777
    .restart local v17       #popupData:Lcom/android/music/common/util/DrmPopupData;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 779
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 780
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupUri:Landroid/net/Uri;

    .line 781
    move-object v0, v15

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 782
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 783
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/util/DrmPopupData;->setFilter([Ljava/lang/String;I)V

    .line 785
    move v0, v12

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->id:I

    .line 787
    new-instance v16, Lcom/android/music/common/util/DrmServicePopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 788
    .restart local v16       #popup:Lcom/android/music/common/util/DrmServicePopup;
    invoke-virtual/range {v16 .. v16}, Lcom/android/music/common/util/DrmServicePopup;->show()V

    .line 790
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    goto/16 :goto_2

    .line 795
    .end local v16           #popup:Lcom/android/music/common/util/DrmServicePopup;
    .end local v17           #popupData:Lcom/android/music/common/util/DrmPopupData;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_11
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/music/player/service/ICorePlayerService;->setLaunchMode(I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_13

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_12

    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 801
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 804
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/music/common/util/ListType;->getTagIdString(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_2

    .line 822
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_14
    :try_start_d
    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->play()V

    goto/16 :goto_2

    .line 827
    :cond_15
    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->pause()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public timerStop()V
    .locals 4

    .prologue
    .line 845
    const/4 v1, 0x0

    .line 848
    .local v1, mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :try_start_0
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface {p0}, Lcom/android/music/list/interfaces/MpCorePlayer;->GetCorePlayer()Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    .line 849
    if-nez v1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 850
    :cond_1
    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->isPlaying()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 851
    invoke-interface {v1}, Lcom/android/music/player/service/ICorePlayerService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 855
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TAG"

    const-string v3, "fail to get current media from music core player."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
