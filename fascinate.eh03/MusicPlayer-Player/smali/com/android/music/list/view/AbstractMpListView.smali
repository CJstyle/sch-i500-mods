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
.field private static final TAG:Ljava/lang/String;

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

.field private static mSync:Ljava/lang/String;

.field public static max:J

.field public static musicChange:Z

.field public static oldPlayIndex:Ljava/lang/String;

.field public static oldmListType:I

.field public static oldsubTag:Ljava/lang/String;

.field public static position:J


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

.field private mPopupHandler:Landroid/os/Handler;

.field private mPopupId:I

.field protected mSubCheck:Z

.field private mTempCheck:[Z

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    const-class v0, Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->TAG:Ljava/lang/String;

    .line 112
    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->oldPlayIndex:Ljava/lang/String;

    .line 114
    sput v3, Lcom/android/music/list/view/AbstractMpListView;->currentPlayIndex:I

    .line 115
    sput v3, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    .line 116
    const-string v0, ""

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->oldsubTag:Ljava/lang/String;

    .line 117
    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    .line 118
    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 119
    sput-boolean v2, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 120
    sput-wide v4, Lcom/android/music/list/view/AbstractMpListView;->position:J

    sput-wide v4, Lcom/android/music/list/view/AbstractMpListView;->max:J

    .line 121
    sput v2, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 122
    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 123
    sput-boolean v2, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 130
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

    .line 879
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2599
    new-instance v1, Lcom/android/music/list/view/AbstractMpListView$3;

    invoke-direct {v1, p0}, Lcom/android/music/list/view/AbstractMpListView$3;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mPopupHandler:Landroid/os/Handler;

    .line 880
    iput-object p1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .line 881
    iput p2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    .line 882
    iput p4, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    .line 883
    iput-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 884
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 893
    new-instance v1, Lcom/android/music/common/manager/MusicDrmManager;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicDrmManager;-><init>()V

    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    .line 894
    invoke-virtual {p0, p3, p2}, Lcom/android/music/list/view/AbstractMpListView;->showCheck(ZI)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 895
    iput-boolean p3, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    .line 904
    :goto_0
    iput-object p5, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    .line 905
    const-string v0, ""

    .line 906
    .local v0, subTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v0, v1, v3

    .line 913
    :cond_0
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    .line 914
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    .line 916
    :cond_1
    iget-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v1, :cond_2

    .line 919
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

    .line 925
    :cond_2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 926
    invoke-virtual {p0, p0}, Lcom/android/music/list/view/AbstractMpListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 929
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/music/list/activity/MpListActivity;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/android/music/list/activity/MpSearchResultActivity;

    if-eqz v1, :cond_4

    .line 930
    :cond_3
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->initViewAdapter()I

    .line 933
    :cond_4
    return-void

    .line 896
    .end local v0           #subTag:Ljava/lang/String;
    :cond_5
    if-eqz p3, :cond_6

    .line 897
    iput-boolean v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    .line 898
    iput-boolean v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    goto :goto_0

    .line 900
    :cond_6
    iput-boolean v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    .line 901
    iput-boolean v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mSync:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/list/view/AbstractMpListView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mPopupHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static clearStatics()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 153
    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 154
    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    .line 155
    sput-boolean v1, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    .line 156
    sput-wide v2, Lcom/android/music/list/view/AbstractMpListView;->position:J

    .line 157
    sput-wide v2, Lcom/android/music/list/view/AbstractMpListView;->max:J

    .line 158
    sput v1, Lcom/android/music/list/view/AbstractMpListView;->icon:I

    .line 159
    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 160
    sput-boolean v1, Lcom/android/music/list/view/AbstractMpListView;->musicChange:Z

    .line 162
    sput-object v0, Lcom/android/music/list/data/MpListDataController;->mContext:Landroid/content/Context;

    .line 163
    return-void
.end method

.method private playMusic(IIILjava/lang/String;Landroid/database/Cursor;)V
    .locals 24
    .parameter "index"
    .parameter "listType"
    .parameter "idType"
    .parameter "filterId"
    .parameter "playCursor"

    .prologue
    .line 1536
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1538
    const/4 v7, -0x1

    .line 1539
    .local v7, listId:I
    const/4 v8, 0x0

    .line 1540
    .local v8, listName:Ljava/lang/String;
    if-nez p3, :cond_2

    .line 1541
    const/4 v7, -0x1

    .line 1542
    const/4 v8, 0x0

    .line 1571
    :goto_0
    sget-object v11, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 1572
    .local v11, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    const/16 v17, 0x0

    .line 1573
    .local v17, iPlaying_ID:I
    const/16 v16, 0x0

    .line 1575
    .local v16, iPlayingMediaId:I
    if-eqz v11, :cond_0

    .line 1576
    :try_start_0
    invoke-interface {v11}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 1584
    :cond_0
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p5

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v0, v16

    move v1, v4

    if-ne v0, v1, :cond_4

    sget v4, Lcom/android/music/list/view/AbstractMpListView;->oldmListType:I

    move/from16 v0, p2

    move v1, v4

    if-ne v0, v1, :cond_4

    .line 1601
    invoke-direct/range {p0 .. p0}, Lcom/android/music/list/view/AbstractMpListView;->startMusicPlayer()V

    .line 1706
    .end local p0
    .end local p1
    :cond_1
    :goto_2
    return-void

    .line 1543
    .end local v11           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    .end local v16           #iPlayingMediaId:I
    .end local v17           #iPlaying_ID:I
    .restart local p0
    .restart local p1
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 1544
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1545
    const/4 v8, 0x0

    goto :goto_0

    .line 1547
    :cond_3
    const/4 v7, -0x1

    .line 1548
    move-object/from16 v8, p4

    goto :goto_0

    .line 1579
    .restart local v11       #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    .restart local v16       #iPlayingMediaId:I
    .restart local v17       #iPlaying_ID:I
    :catch_0
    move-exception v13

    .line 1581
    .local v13, e1:Landroid/os/RemoteException;
    invoke-virtual {v13}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1614
    .end local v13           #e1:Landroid/os/RemoteException;
    :cond_4
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

    .line 1615
    .local v5, id:I
    const-string v4, "_data"

    move-object/from16 v0, p5

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p5

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1616
    .local v15, filePath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1617
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1618
    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-direct {v4}, Ljava/io/FileNotFoundException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1697
    .end local v5           #id:I
    .end local v14           #file:Ljava/io/File;
    .end local v15           #filePath:Ljava/lang/String;
    .end local p1
    :catch_1
    move-exception v4

    move-object v12, v4

    .line 1698
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0a0044

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1703
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v4, v0

    instance-of v4, v4, Lcom/android/music/list/interfaces/MpCorePlayer;

    if-eqz v4, :cond_1

    .line 1704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/music/list/interfaces/MpCorePlayer;

    invoke-interface/range {p0 .. p0}, Lcom/android/music/list/interfaces/MpCorePlayer;->checkPlayButtonEnable()V

    goto :goto_2

    .line 1619
    .restart local v5       #id:I
    .restart local v14       #file:Ljava/io/File;
    .restart local v15       #filePath:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_5
    :try_start_2
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 1622
    .local v23, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v4, v0

    invoke-virtual {v4, v15}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1623
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1624
    .local v20, popupStr:[I
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    move-object/from16 v22, v0

    .line 1625
    .local v22, softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v4, v0

    const/4 v6, 0x1

    move-object v0, v4

    move v1, v6

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/manager/MusicDrmManager;->getDrmPopup(Z[I[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;)I

    move-result v21

    .line 1626
    .local v21, popupType:I
    if-nez v21, :cond_6

    .line 1630
    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/music/list/view/AbstractMpListView;->startMusicPlayer(IIILjava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 1632
    :cond_6
    new-instance v19, Lcom/android/music/common/util/DrmPopupData;

    invoke-direct/range {v19 .. v19}, Lcom/android/music/common/util/DrmPopupData;-><init>()V

    .line 1633
    .local v19, popupData:Lcom/android/music/common/util/DrmPopupData;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 1634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v4

    move v0, v4

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 1635
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 1637
    move-object v0, v15

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 1638
    const/4 v4, 0x4

    move v0, v4

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 1639
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1641
    move v0, v5

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->id:I

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v19

    move-object v1, v4

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/music/common/util/DrmPopupData;->setFilter([Ljava/lang/String;I)V

    .line 1644
    new-instance v18, Lcom/android/music/common/util/DrmServicePopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 1645
    .local v18, popup:Lcom/android/music/common/util/DrmServicePopup;
    invoke-virtual/range {v18 .. v18}, Lcom/android/music/common/util/DrmServicePopup;->show()V

    .line 1647
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    goto/16 :goto_3

    .line 1651
    .end local v18           #popup:Lcom/android/music/common/util/DrmServicePopup;
    .end local v19           #popupData:Lcom/android/music/common/util/DrmPopupData;
    .end local v20           #popupStr:[I
    .end local v21           #popupType:I
    .end local v22           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move v4, v0

    const/4 v6, 0x7

    if-ne v4, v6, :cond_8

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    .line 1668
    :cond_8
    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/music/list/view/AbstractMpListView;->startMusicPlayer(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method private playMusic(IILjava/lang/String;)V
    .locals 6
    .parameter "index"
    .parameter "idType"
    .parameter "filterId"

    .prologue
    .line 1532
    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    iget-object v5, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/AbstractMpListView;->playMusic(IIILjava/lang/String;Landroid/database/Cursor;)V

    .line 1533
    return-void
.end method

.method private startMusicPlayer()V
    .locals 4

    .prologue
    const-string v3, "musicplayer.action"

    .line 1458
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1459
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 1460
    const/high16 v0, 0x402

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1461
    const-string v0, "musicplayer.action"

    const-string v0, "Search"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1466
    :goto_0
    const-string v0, "FromList"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1467
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/list/activity/MpListActivity;

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->getIndexOfMainListType()I

    move-result v0

    .line 1470
    const-string v2, "IndexOfMainlistType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1473
    :cond_0
    const-string v0, "setPlayIterator.play"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1474
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 1475
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1487
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1489
    return-void

    .line 1463
    :cond_2
    const/high16 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1464
    const-string v0, "musicplayer.action"

    const-string v0, "Library"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private startMusicPlayer(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, "musicplayer.action"

    .line 1492
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1493
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 1494
    const/high16 v0, 0x402

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1495
    const-string v0, "musicplayer.action"

    const-string v0, "Search"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    :goto_0
    const-string v0, "FromList"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1501
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/list/activity/MpListActivity;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->getIndexOfMainListType()I

    move-result v0

    .line 1504
    const-string v2, "IndexOfMainlistType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1508
    :cond_0
    const-string v0, "setPlayIterator.play"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1509
    const-string v0, "setPlayIterator.id"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1510
    const-string v0, "setPlayIterator.listType"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1511
    const-string v0, "setPlayIterator.filterId"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1512
    const-string v0, "setPlayIterator.strFilter"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1513
    const-string v0, "setPlayIterator.filterId2"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1514
    const-string v0, "setPlayIterator.strFilter2"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1517
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1518
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1529
    :cond_1
    return-void

    .line 1497
    :cond_2
    const/high16 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1498
    const-string v0, "musicplayer.action"

    const-string v0, "Library"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public GetCreateMusicHandler()Lcom/android/music/list/view/AbstractMpListView$musicHandler;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "_"

    .line 178
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandlerTable:Ljava/util/Hashtable;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 183
    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v0, v0, v3

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
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

    .line 196
    :goto_0
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    if-nez v0, :cond_1

    .line 198
    const-string v0, "TAG"

    const-string v1, "HasCheck new musicHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    invoke-direct {v0, p0}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    sput-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    .line 201
    :cond_1
    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    return-object v0

    .line 186
    :cond_2
    sput-object p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_0

    .line 190
    :cond_3
    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v0, :cond_4

    .line 191
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

    .line 193
    :cond_4
    sput-object p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheckListView:Lcom/android/music/list/view/AbstractMpListView;

    goto :goto_0
.end method

.method public canDeleteItem(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "cursor"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2561
    iget v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    if-ne v3, v5, :cond_0

    move v3, v4

    .line 2573
    :goto_0
    return v3

    .line 2562
    :cond_0
    const/4 v2, 0x0

    .line 2564
    .local v2, iPlayingMediaId:I
    :try_start_0
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 2565
    .local v0, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->isStop()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 2568
    :cond_1
    invoke-interface {v0}, Lcom/android/music/player/service/ICorePlayerService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2573
    .end local v0           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :goto_1
    iget v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-ne v3, v5, :cond_2

    iget v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-static {v3}, Lcom/android/music/common/util/ListType;->getAudioIdColumn(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 2569
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2571
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    move v3, v4

    .line 2573
    goto :goto_0
.end method

.method public clearAdapter()V
    .locals 2

    .prologue
    .line 2401
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    if-eqz v0, :cond_0

    .line 2402
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpImageDataBuffer;->ClearLoadImage()V

    .line 2404
    :cond_0
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/music/list/view/AbstractMpListView$EmptyAdapter;-><init>(Lcom/android/music/list/view/AbstractMpListView;Lcom/android/music/list/view/AbstractMpListView$1;)V

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2405
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2406
    return-void
.end method

.method public closeCursor()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1010
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 1011
    return-void
.end method

.method public abstract getColumn()[Ljava/lang/String;
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 2117
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    return v0
.end method

.method public getNotMergedCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2683
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mNotMergedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mNotMergedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2690
    :goto_0
    return v0

    .line 2685
    :cond_0
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 2686
    goto :goto_0

    .line 2687
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 2688
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 2690
    goto :goto_0
.end method

.method protected abstract initAdapter(Landroid/content/Context;Z)V
.end method

.method public initCursor(I)Landroid/database/Cursor;
    .locals 1
    .parameter "listType"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public initCursor(I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "listType"
    .parameter "conditions"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1065
    iget-object v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v3

    .line 1066
    .local v3, mdb:Lcom/android/music/common/data/MusicDB;
    new-instance v2, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v2}, Lcom/android/music/common/data/MpListFilter;-><init>()V

    .line 1067
    .local v2, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v1, 0x0

    .line 1069
    .local v1, cursor:Landroid/database/Cursor;
    const-string v4, "MpList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AbstractMpListView::initCursor : listType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    packed-switch p1, :pswitch_data_0

    .line 1115
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-eqz v4, :cond_3

    .line 1116
    invoke-virtual {p0, v1, v8}, Lcom/android/music/list/view/AbstractMpListView;->mergedCursor(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v1

    .line 1134
    :cond_0
    :goto_1
    const/16 v4, 0x19

    if-ne p1, v4, :cond_1

    iget v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 1141
    iget v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {v3, v4, v7, v7, v7}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1143
    :cond_1
    return-object v1

    .line 1090
    :pswitch_1
    invoke-virtual {v3, p1, v7, v7, v7}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1091
    goto :goto_0

    .line 1104
    :pswitch_2
    new-array v4, v8, [Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iput-object v4, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    .line 1105
    aget-object v4, p2, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 1106
    iget-object v4, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v5, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v6, p2, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v2, v8, v6, v7}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v5, v4, v9

    .line 1112
    :goto_2
    invoke-virtual {v3, p1, v2, v7, v7}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 1109
    :cond_2
    iget-object v4, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v5, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v6, p2, v8

    invoke-direct {v5, v2, v9, v9, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v5, v4, v9

    goto :goto_2

    .line 1118
    :cond_3
    if-ne p1, v10, :cond_5

    iget v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-eq v4, v8, :cond_5

    .line 1121
    iput-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mNotMergedCursor:Landroid/database/Cursor;

    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v4, v4, Lcom/android/music/list/activity/MpMainTabActivity;

    if-eqz v4, :cond_4

    .line 1126
    iget-object v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v0, v4, Lcom/android/music/list/activity/MpMainTabActivity;->mPlaylistTabListID:Ljava/util/ArrayList;

    .line 1128
    :cond_4
    invoke-virtual {v3, v1, p1, v0}, Lcom/android/music/common/data/MusicDB;->getMergedCursor(Landroid/database/Cursor;ILjava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v1

    .line 1129
    goto :goto_1

    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    if-ne p1, v10, :cond_0

    iget v4, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-ne v4, v8, :cond_0

    .line 1131
    invoke-virtual {p0, v1, v9}, Lcom/android/music/list/view/AbstractMpListView;->mergedCursor(Landroid/database/Cursor;Z)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 1071
    nop

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

.method public initViewAdapter()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2487
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 2488
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2490
    const-string v1, "AbstractMpListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initViewAdapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2494
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v0, :cond_0

    .line 2495
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2496
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2497
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2504
    :goto_0
    const/4 v0, 0x3

    .line 2536
    :goto_1
    return v0

    .line 2498
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/list/activity/MediaPickerActivity;

    if-eqz v0, :cond_1

    .line 2500
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->setNoItem()V

    goto :goto_0

    .line 2502
    :cond_1
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2506
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5

    .line 2509
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;

    if-eqz v0, :cond_3

    .line 2510
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MpMainTabActivity;->getCurrentTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->showNoTracksView(ZLjava/lang/String;)V

    :goto_2
    move v0, v5

    .line 2519
    goto :goto_1

    .line 2513
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/list/activity/MediaPickerActivity;

    if-eqz v0, :cond_4

    .line 2515
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->setNoItem()V

    goto :goto_2

    .line 2517
    :cond_4
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 2521
    :cond_5
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    if-lt v0, v4, :cond_8

    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 2524
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/list/activity/MpMainTabActivity;

    if-eqz v0, :cond_6

    .line 2525
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v1}, Lcom/android/music/list/activity/MpMainTabActivity;->getCurrentTab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->showNoTracksView(ZLjava/lang/String;)V

    .line 2526
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->initAdapter(Landroid/content/Context;Z)V

    :goto_3
    move v0, v5

    .line 2532
    goto :goto_1

    .line 2527
    :cond_6
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/music/list/activity/MediaPickerActivity;

    if-eqz v0, :cond_7

    .line 2528
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-virtual {p0}, Lcom/android/music/list/activity/MediaPickerActivity;->setNoItem()V

    goto :goto_3

    .line 2530
    :cond_7
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 2535
    :cond_8
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->initAdapter(Landroid/content/Context;Z)V

    move v0, v4

    .line 2536
    goto/16 :goto_1
.end method

.method public initViewAdapter(ZLandroid/database/Cursor;)Z
    .locals 2
    .parameter "useCursor"
    .parameter "cursor"

    .prologue
    .line 2547
    if-eqz p1, :cond_1

    .line 2548
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2549
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2550
    :cond_0
    iput-object p2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 2556
    :goto_0
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->initAdapter(Landroid/content/Context;Z)V

    .line 2557
    const/4 v0, 0x1

    return v0

    .line 2552
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 2553
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2554
    :cond_2
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method protected mergedCursor(Landroid/database/Cursor;Z)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 2234
    if-nez p1, :cond_0

    move-object v0, v9

    .line 2255
    :goto_0
    return-object v0

    .line 2237
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 2238
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getColumn()[Ljava/lang/String;

    move-result-object v1

    .line 2239
    aget-object v2, v1, v7

    if-eqz v2, :cond_1

    aget-object v1, v1, v7

    .line 2241
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2242
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v7

    .line 2243
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_6

    .line 2244
    aget-object v5, v0, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 2245
    iget-object v5, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz p2, :cond_2

    const v6, 0x7f0a008a

    :goto_3
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2239
    :cond_1
    const-string v1, "title"

    goto :goto_1

    .line 2245
    :cond_2
    const v6, 0x7f0a00af

    goto :goto_3

    .line 2246
    :cond_3
    aget-object v5, v0, v4

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 2247
    if-eqz p2, :cond_4

    const/16 v5, -0x3e7

    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const/16 v5, -0x3e6

    goto :goto_5

    .line 2249
    :cond_5
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2251
    :cond_6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2252
    new-instance v1, Lcom/android/music/list/data/ArrayListCursor;

    invoke-direct {v1, v0, v2}, Lcom/android/music/list/data/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2254
    new-instance v0, Landroid/database/MergeCursor;

    new-array v2, v8, [Landroid/database/Cursor;

    aput-object v1, v2, v7

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const-string v4, "PlaylistID"

    .line 2183
    const/16 v0, 0x1a

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_2

    .line 2185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    .line 2191
    :goto_0
    const-string v0, "ListType"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2192
    const-string v0, "TitleText"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2193
    const-string v0, "Conditions"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2194
    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    if-eqz v0, :cond_1

    .line 2195
    const-string v0, "Check"

    iget-boolean v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2196
    const-string v0, "CheckListType"

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2197
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2198
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2199
    const-string v2, "PlaylistID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2200
    const-string v2, "PlaylistID"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2202
    :cond_1
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    if-ne v0, v3, :cond_3

    .line 2203
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2208
    :goto_1
    return-void

    .line 2189
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v1, v0

    goto :goto_0

    .line 2205
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 24
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
    .line 1709
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

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v20

    .line 1724
    .local v20, mDB:Lcom/android/music/common/data/MusicDB;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    move v6, v0

    if-eqz v6, :cond_2

    .line 1727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    const/16 v7, 0x10

    if-ne v6, v7, :cond_0

    .line 1728
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

    .line 1732
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;->setCheckBox(I)V

    .line 2114
    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .end local p2
    :cond_1
    :goto_0
    return-void

    .line 1737
    .restart local p0
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .restart local p2
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getId()I

    move-result v23

    .line 1738
    .local v23, viewID:I
    const/16 v6, -0x3e5

    move/from16 v0, v23

    move v1, v6

    if-eq v0, v1, :cond_1

    .line 1741
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v6, v0

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1750
    :pswitch_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->playMusic(IILjava/lang/String;)V

    goto :goto_0

    .line 1772
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1773
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

    .line 1775
    :cond_3
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

    .line 1791
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

    .line 1810
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :pswitch_4
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1811
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

    .line 1814
    const/4 v6, 0x3

    new-array v15, v6, [Ljava/lang/String;

    .line 1815
    .local v15, con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v15, v6

    .line 1816
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

    aput-object v7, v15, v6

    .line 1818
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v6

    .line 1820
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    .end local p2
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

    .line 1822
    const/16 v6, 0x10

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1826
    :cond_4
    const/16 v6, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1841
    .end local v15           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .restart local p2
    :pswitch_5
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1844
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

    .line 1849
    const/4 v6, 0x3

    new-array v15, v6, [Ljava/lang/String;

    .line 1850
    .restart local v15       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v15, v6

    .line 1853
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

    aput-object v7, v15, v6

    .line 1856
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v6

    .line 1858
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    .end local p2
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

    .line 1860
    const/16 v6, 0x13

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1864
    :cond_5
    const/16 v6, 0x13

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1878
    .end local v15           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .restart local p2
    :pswitch_6
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1879
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

    .line 1881
    const/4 v6, 0x3

    new-array v15, v6, [Ljava/lang/String;

    .line 1882
    .restart local v15       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v15, v6

    .line 1883
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

    aput-object v7, v15, v6

    .line 1885
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v6

    .line 1887
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    .end local p2
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

    .line 1889
    const/16 v6, 0x14

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1893
    :cond_6
    const/16 v6, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1907
    .end local v15           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .restart local p2
    :pswitch_7
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1910
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

    .line 1914
    const/4 v6, 0x3

    new-array v15, v6, [Ljava/lang/String;

    .line 1915
    .restart local v15       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "1"

    aput-object v7, v15, v6

    .line 1918
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

    aput-object v7, v15, v6

    .line 1922
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v6

    .line 1924
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    .end local p2
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

    .line 1926
    const/16 v6, 0x15

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1930
    :cond_7
    const/16 v6, 0x15

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1967
    .end local v15           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .restart local p2
    :pswitch_8
    const/4 v6, 0x3

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1968
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

    .line 1970
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

    .line 1972
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

    .line 1974
    const/4 v6, 0x3

    new-array v15, v6, [Ljava/lang/String;

    .line 1975
    .restart local v15       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v15, v6

    .line 1976
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

    aput-object v7, v15, v6

    .line 1978
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v6

    .line 1980
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    if-eqz v6, :cond_8

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

    if-ne v6, v7, :cond_8

    .line 1982
    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1986
    :cond_8
    const/16 v6, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1994
    .end local v15           #con:[Ljava/lang/String;
    .end local v22           #title:[Ljava/lang/String;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .restart local p2
    :pswitch_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mSubCheck:Z

    move v6, v0

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 1997
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

    if-ne v6, v7, :cond_a

    .line 1998
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v21

    .line 1999
    .local v21, musicDB:Lcom/android/music/common/data/MusicDB;
    invoke-virtual/range {v21 .. v21}, Lcom/android/music/common/data/MusicDB;->getPlaylistTotalCount()I

    move-result v6

    const/16 v7, 0x64

    if-lt v6, v7, :cond_9

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x7f0a00f1

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2003
    :cond_9
    const/4 v6, 0x2

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2004
    .restart local v22       #title:[Ljava/lang/String;
    const/4 v6, 0x2

    new-array v15, v6, [Ljava/lang/String;

    .line 2005
    .restart local v15       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v6

    .line 2006
    const/16 v6, 0x17

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2009
    .end local v15           #con:[Ljava/lang/String;
    .end local v21           #musicDB:Lcom/android/music/common/data/MusicDB;
    .end local v22           #title:[Ljava/lang/String;
    :cond_a
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

    .line 2010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object/from16 p1, v0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 2011
    .local v18, intent:Landroid/content/Intent;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 2012
    .local v14, bundle:Landroid/os/Bundle;
    const-string v6, "CheckedList"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v9

    .line 2013
    .local v9, bool:[Z
    const-string v6, "RootListType"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2014
    .local v5, rootListType:I
    const-string v6, "Conditions"

    invoke-virtual {v14, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    .line 2015
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v8

    .line 2016
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

    .line 2017
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

    const/4 v13, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v4 .. v13}, Lcom/android/music/list/data/MpListFileManageThread;-><init>(IIILandroid/database/Cursor;[ZLandroid/content/Context;Landroid/os/Handler;Lcom/android/music/list/view/AbstractMpListView;Z)V

    .line 2018
    .local v4, thread:Lcom/android/music/list/data/MpListFileManageThread;
    invoke-virtual {v4}, Lcom/android/music/list/data/MpListFileManageThread;->start()V

    goto/16 :goto_0

    .line 2070
    .end local v4           #thread:Lcom/android/music/list/data/MpListFileManageThread;
    .end local v5           #rootListType:I
    .end local v7           #listID:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #bool:[Z
    .end local v14           #bundle:Landroid/os/Bundle;
    .end local v18           #intent:Landroid/content/Intent;
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_b
    const/4 v6, 0x3

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2071
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

    .line 2072
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

    .line 2073
    const/4 v6, 0x3

    new-array v15, v6, [Ljava/lang/String;

    .line 2074
    .restart local v15       #con:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v15, v6

    .line 2076
    const/16 v16, 0xd

    .line 2077
    .local v16, iListType:I
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

    move-result v17

    .line 2078
    .local v17, iPlaylistID:I
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

    move-result-object v19

    .line 2081
    .local v19, listData:Ljava/lang/String;
    const/4 v6, -0x1

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_d

    .line 2083
    const/4 v6, 0x1

    const-string v7, "-1"

    aput-object v7, v15, v6

    .line 2084
    const-string v6, "Music_Default_Playlist"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2090
    :goto_1
    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v6

    .line 2091
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

    .line 2097
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCheckListType:I

    move v6, v0

    const/4 v7, 0x5

    if-ne v6, v7, :cond_c

    .line 2099
    const/16 v16, 0x1a

    .line 2102
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    check-cast p2, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->mGestureListener:Lcom/android/music/list/adapter/AbstractMpListAdapter$GestureSweepListener;

    move-object v6, v0

    if-eqz v6, :cond_e

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

    if-ne v6, v7, :cond_e

    .line 2104
    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->startMusicByFolder(II[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2088
    .restart local p1       #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .restart local p2
    :cond_d
    const/4 v6, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v15, v6

    goto :goto_1

    .line 2107
    .end local p1           #arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .end local p2
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v16

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView;->moveToTracklist([Ljava/lang/String;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1741
    nop

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

    .line 1264
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1265
    const-string v1, "Check"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1266
    const-string v1, "PlaylistID"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1268
    return-void
.end method

.method protected optionAddToPlaylist()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1295
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1296
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1297
    const-string v1, "ListType"

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1298
    const-string v1, "TitleText"

    const v2, 0x7f0a0035

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1300
    const-string v1, "Check"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1301
    const-string v1, "CheckListType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1302
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1303
    return-void
.end method

.method protected optionCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1223
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Lcom/android/music/common/data/MusicDB;->getPlaylistTotalCount()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00f1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1233
    :goto_0
    return-void

    .line 1228
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1229
    const-string v1, "ListType"

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1230
    const-string v1, "Check"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1231
    const-string v1, "TitleText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0039

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected optionDelete()V
    .locals 3

    .prologue
    .line 1314
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1315
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    const-string v1, "ListType"

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1317
    const-string v1, "TitleText"

    const v2, 0x7f0a0038

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1319
    const-string v1, "Check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1320
    const-string v1, "CheckListType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1321
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1322
    return-void
.end method

.method protected optionEdit()V
    .locals 3

    .prologue
    .line 1351
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1352
    const-string v1, "ListType"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1353
    const-string v1, "TitleText"

    const v2, 0x7f0a003a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1355
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1356
    const-string v1, "CheckListType"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1357
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1358
    return-void
.end method

.method protected optionEditTitle()V
    .locals 3

    .prologue
    .line 1332
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1333
    const-string v0, "ListType"

    const/16 v2, 0x1a

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1334
    const-string v2, "TitleText"

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->getListTitle()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    const-string v0, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const-string v0, "CheckListType"

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1339
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1340
    return-void
.end method

.method protected optionGotoDiscplus()V
    .locals 0

    .prologue
    .line 1428
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/android/music/list/interfaces/MpHandlerInterface;

    invoke-interface {p0}, Lcom/android/music/list/interfaces/MpHandlerInterface;->launchDiscPlus()V

    .line 1429
    return-void
.end method

.method public optionMenuOperate(I)V
    .locals 0
    .parameter "menuID"

    .prologue
    .line 1154
    packed-switch p1, :pswitch_data_0

    .line 1214
    :goto_0
    :pswitch_0
    return-void

    .line 1157
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionShop()V

    goto :goto_0

    .line 1161
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionAdd()V

    goto :goto_0

    .line 1165
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionAddToPlaylist()V

    goto :goto_0

    .line 1169
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionDelete()V

    goto :goto_0

    .line 1173
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionEditTitle()V

    goto :goto_0

    .line 1178
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionEdit()V

    goto :goto_0

    .line 1182
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionMusicPlayer()V

    goto :goto_0

    .line 1186
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionRemove()V

    goto :goto_0

    .line 1190
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionSaveAsPlaylist()V

    goto :goto_0

    .line 1194
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionSearch()V

    goto :goto_0

    .line 1198
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionSettings()V

    goto :goto_0

    .line 1202
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionWishlist()V

    goto :goto_0

    .line 1205
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionCreate()V

    goto :goto_0

    .line 1208
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionReorder()V

    goto :goto_0

    .line 1211
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->optionGotoDiscplus()V

    goto :goto_0

    .line 1154
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
    .line 1367
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1368
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1370
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1371
    return-void
.end method

.method protected optionRemove()V
    .locals 3

    .prologue
    .line 1382
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1383
    const-string v1, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    const-string v1, "ListType"

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1385
    const-string v1, "TitleText"

    const v2, 0x7f0a0031

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1387
    const-string v1, "Check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1388
    const-string v1, "CheckListType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1389
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1390
    return-void
.end method

.method protected optionReorder()V
    .locals 3

    .prologue
    .line 1421
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpListReorderActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1422
    const-string v0, "Conditions"

    iget-object v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    const-string v2, "TitleText"

    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->getListTitle()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1424
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1425
    return-void
.end method

.method protected optionSaveAsPlaylist()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1243
    invoke-static {}, Lcom/android/music/common/data/MusicDB;->getInstance()Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    .line 1244
    invoke-virtual {v0}, Lcom/android/music/common/data/MusicDB;->getPlaylistTotalCount()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v1, 0x7f0a00f1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1253
    :goto_0
    return-void

    .line 1248
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/list/activity/MpPlayListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1249
    const-string v1, "ListType"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1250
    const-string v1, "Check"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1251
    const-string v1, "TitleText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0030

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected optionSearch()V
    .locals 0

    .prologue
    .line 1399
    iget-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onSearchRequested()Z

    .line 1400
    return-void
.end method

.method protected optionSettings()V
    .locals 3

    .prologue
    .line 1410
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1411
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1412
    return-void
.end method

.method protected optionShop()V
    .locals 3

    .prologue
    .line 1279
    sget-object v1, Lcom/android/music/list/view/AbstractMpListView;->TAG:Ljava/lang/String;

    const-string v2, "Options():OPTION_SHOP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1283
    return-void
.end method

.method protected optionWishlist()V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method

.method public playMusicInPopup(Z)V
    .locals 9
    .parameter "playCheck"

    .prologue
    const/4 v8, 0x1

    .line 2122
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 2124
    .local v0, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    const/4 v3, -0x1

    .line 2125
    .local v3, filterId:I
    const/4 v4, 0x0

    .line 2126
    .local v4, strFilter:Ljava/lang/String;
    const/4 v5, -0x1

    .line 2127
    .local v5, filterId2:I
    const/4 v6, 0x0

    .line 2130
    .local v6, strFilter2:Ljava/lang/String;
    iget v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 2159
    :goto_0
    :pswitch_0
    if-eqz p1, :cond_1

    .line 2161
    :try_start_0
    iget v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/music/list/view/AbstractMpListView;->startMusicPlayer(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2170
    .end local v0           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :goto_1
    return-void

    .line 2145
    .restart local v0       #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :pswitch_1
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2146
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2147
    const/4 v4, 0x0

    goto :goto_0

    .line 2149
    :cond_0
    const/4 v3, -0x1

    .line 2150
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v4, v1, v8

    .line 2152
    goto :goto_0

    .line 2154
    :pswitch_2
    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 2165
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    iget v2, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-interface/range {v0 .. v6}, Lcom/android/music/player/service/ICorePlayerService;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2167
    .end local v0           #corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 2168
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2130
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
    .line 988
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 989
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 990
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpSetViewInterface;->reset(Landroid/database/Cursor;)V

    .line 991
    return-void
.end method

.method public resetView()V
    .locals 2

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 944
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lcom/android/music/list/adapter/MpListGroupAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-nez v0, :cond_0

    .line 945
    iget v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    invoke-virtual {p0, v0}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    .line 946
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpSetViewInterface;->reset(Landroid/database/Cursor;)V

    .line 948
    :cond_0
    return-void
.end method

.method public resumeCheck()V
    .locals 2

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mTempCheck:[Z

    if-eqz v0, :cond_0

    .line 2410
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    iget-object v1, p0, Lcom/android/music/list/view/AbstractMpListView;->mTempCheck:[Z

    invoke-interface {v0, v1}, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;->resumeCheckBox([Z)V

    .line 2411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mTempCheck:[Z

    .line 2413
    :cond_0
    return-void
.end method

.method public saveCheck()V
    .locals 1

    .prologue
    .line 2416
    iget-boolean v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mHasCheck:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;

    invoke-interface {v0}, Lcom/android/music/list/interfaces/MpCheckBoxControlInterface;->getCheckedBoxCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2417
    invoke-virtual {p0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    invoke-interface {v0}, Lcom/android/music/list/interfaces/MpSetViewInterface;->getChecked()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mTempCheck:[Z

    .line 2420
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/music/list/view/AbstractMpListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 147
    move-object v0, p1

    check-cast v0, Lcom/android/music/list/interfaces/MpSetViewInterface;

    move-object v1, v0

    invoke-interface {v1, p0}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setListView(Lcom/android/music/list/view/AbstractMpListView;)V

    .line 148
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iput-object p0, p0, Lcom/android/music/list/view/AbstractMpListView;->mTrackList:Landroid/widget/ListView;

    .line 150
    return-void
.end method

.method public setSoftKey(ILandroid/widget/Button;Landroid/widget/Button;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0a0036

    .line 2268
    const v0, 0x7f0a00a9

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(I)V

    .line 2269
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/music/list/view/AbstractMpListView$1;-><init>(Lcom/android/music/list/view/AbstractMpListView;I)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2280
    packed-switch p1, :pswitch_data_0

    .line 2295
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2296
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;

    invoke-direct {v0, p0}, Lcom/android/music/list/view/AbstractMpListView$LeftSoftKeyOnClickListener;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2297
    new-instance v0, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;-><init>(Lcom/android/music/list/view/AbstractMpListView;Landroid/widget/Button;)V

    iput-object v0, p0, Lcom/android/music/list/view/AbstractMpListView;->mLeftButtonHandler:Lcom/android/music/list/view/AbstractMpListView$LeftButtonHandler;

    .line 2298
    return-void

    .line 2282
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 2286
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 2289
    :pswitch_2
    const v0, 0x7f0a0038

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 2292
    :pswitch_3
    const v0, 0x7f0a0031

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 2280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public showCheck(ZI)Z
    .locals 4
    .parameter "hasCheck"
    .parameter "listType"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2220
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

    .line 1435
    invoke-virtual {p0, p1, p3}, Lcom/android/music/list/view/AbstractMpListView;->initCursor(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1436
    .local v5, cursor:Landroid/database/Cursor;
    if-nez v5, :cond_0

    .line 1451
    :goto_0
    return-void

    .line 1438
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1440
    const/4 v3, 0x0

    .line 1442
    .local v3, filterType:I
    aget-object v0, p3, v1

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1443
    const/4 v3, 0x1

    .line 1448
    :goto_1
    const/4 v0, 0x1

    aget-object v4, p3, v0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/music/list/view/AbstractMpListView;->playMusic(IIILjava/lang/String;Landroid/database/Cursor;)V

    goto :goto_0

    .line 1445
    :cond_1
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public timerStart(I)V
    .locals 22
    .parameter "id"

    .prologue
    .line 659
    sget-object v4, Lcom/android/music/common/util/MusicPlayerUtil;->sService:Lcom/android/music/player/service/ICorePlayerService;

    .line 660
    .local v4, corePlayer:Lcom/android/music/player/service/ICorePlayerService;
    const/4 v11, 0x0

    .line 662
    .local v11, Indextag:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    sput p1, Lcom/android/music/list/view/AbstractMpListView;->currentPlayIndex:I

    .line 671
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    sget v6, Lcom/android/music/list/view/AbstractMpListView;->currentPlayIndex:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 672
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

    .line 673
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

    .line 676
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

    .line 677
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

    .line 678
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

    .line 681
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

    .line 685
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

    .line 687
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mListType:I

    move v5, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v5, :pswitch_data_0

    .line 763
    :pswitch_0
    if-eqz v4, :cond_6

    .line 767
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

    .line 768
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

    .line 769
    .local v15, filePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 771
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    invoke-virtual {v5, v15}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 773
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 774
    .local v18, popupStr:[I
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    move-object/from16 v20, v0

    .line 775
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

    .line 776
    .local v19, popupType:I
    if-nez v19, :cond_10

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_f

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_e

    .line 783
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

    .line 852
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

    .line 854
    new-instance v5, Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;-><init>(Lcom/android/music/list/view/AbstractMpListView;)V

    sput-object v5, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    goto/16 :goto_0

    .line 675
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

    .line 694
    :pswitch_1
    if-eqz v4, :cond_6

    .line 698
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

    .line 699
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

    .line 700
    .restart local v15       #filePath:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 702
    .restart local v21       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    invoke-virtual {v5, v15}, Lcom/android/music/common/manager/MusicDrmManager;->IsDrmFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 704
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 705
    .restart local v18       #popupStr:[I
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;

    move-object/from16 v20, v0

    .line 706
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

    .line 707
    .restart local v19       #popupType:I
    if-nez v19, :cond_a

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_9

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    .line 712
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

    .line 751
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    move-object v14, v5

    .line 753
    .local v14, e:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    .line 846
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v14, v5

    .line 848
    .restart local v14       #e:Landroid/os/RemoteException;
    const-string v5, "TAG"

    const-string v6, "fail to get current media from music core player."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 714
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

    .line 754
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    :catch_2
    move-exception v5

    move-object v14, v5

    .line 755
    .local v14, e:Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0a0044

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 717
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

    .line 721
    :cond_a
    new-instance v17, Lcom/android/music/common/util/DrmPopupData;

    invoke-direct/range {v17 .. v17}, Lcom/android/music/common/util/DrmPopupData;-><init>()V

    .line 722
    .local v17, popupData:Lcom/android/music/common/util/DrmPopupData;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 724
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 726
    move-object v0, v15

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 727
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 728
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 729
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

    .line 730
    move v0, v12

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->id:I

    .line 732
    new-instance v16, Lcom/android/music/common/util/DrmServicePopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 733
    .local v16, popup:Lcom/android/music/common/util/DrmServicePopup;
    invoke-virtual/range {v16 .. v16}, Lcom/android/music/common/util/DrmServicePopup;->show()V

    .line 735
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    goto/16 :goto_2

    .line 740
    .end local v16           #popup:Lcom/android/music/common/util/DrmServicePopup;
    .end local v17           #popupData:Lcom/android/music/common/util/DrmPopupData;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_d

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c

    .line 743
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

    .line 745
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

    .line 748
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

    .line 785
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

    .line 822
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    :catch_3
    move-exception v5

    move-object v14, v5

    .line 824
    .local v14, e:Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_2

    .line 788
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

    .line 825
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    .end local v21           #uri:Landroid/net/Uri;
    :catch_4
    move-exception v5

    move-object v14, v5

    .line 826
    .local v14, e:Ljava/io/FileNotFoundException;
    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x7f0a0044

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_2

    .line 792
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

    .line 793
    .restart local v17       #popupData:Lcom/android/music/common/util/DrmPopupData;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupStrings:[I

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->drmManager:Lcom/android/music/common/manager/MusicDrmManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/music/common/manager/MusicDrmManager;->getRemainedCounts()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->remainCount:I

    .line 795
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupType:I

    .line 797
    move-object v0, v15

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFilePath:Ljava/lang/String;

    .line 798
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->popupFrom:I

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/music/common/util/DrmPopupData;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 800
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

    .line 801
    move v0, v12

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/music/common/util/DrmPopupData;->id:I

    .line 803
    new-instance v16, Lcom/android/music/common/util/DrmServicePopup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/music/common/util/DrmServicePopup;-><init>(Landroid/content/Context;Lcom/android/music/common/util/DrmPopupData;)V

    .line 804
    .restart local v16       #popup:Lcom/android/music/common/util/DrmServicePopup;
    invoke-virtual/range {v16 .. v16}, Lcom/android/music/common/util/DrmServicePopup;->show()V

    .line 806
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/music/list/view/AbstractMpListView;->mPopupId:I

    goto/16 :goto_2

    .line 811
    .end local v16           #popup:Lcom/android/music/common/util/DrmServicePopup;
    .end local v17           #popupData:Lcom/android/music/common/util/DrmPopupData;
    .end local v18           #popupStr:[I
    .end local v19           #popupType:I
    .end local v20           #softkeys:[Lcom/android/music/common/manager/MusicDrmManager$POPUP_SOFTKEY_BUTTON;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_12

    .line 814
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

    .line 816
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

    .line 819
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

    .line 837
    .end local v12           #_id:I
    .end local v15           #filePath:Ljava/lang/String;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_14
    :try_start_d
    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->play()V

    goto/16 :goto_2

    .line 842
    :cond_15
    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->pause()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    .line 687
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
