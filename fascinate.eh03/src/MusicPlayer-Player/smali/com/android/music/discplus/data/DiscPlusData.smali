.class public Lcom/android/music/discplus/data/DiscPlusData;
.super Ljava/lang/Object;
.source "DiscPlusData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/music/discplus/data/DiscPlusData;


# instance fields
.field private doAlphabetViewTypeDiscPlusListInfo:Ljava/lang/Runnable;

.field private doNameViewTypeDiscPlusListInfo:Ljava/lang/Runnable;

.field public doNumberViewTypeDiscPlusListInfo:Ljava/lang/Runnable;

.field private mAlphabet:Ljava/lang/String;

.field private mCollator:Ljava/text/Collator;

.field private mContext:Landroid/content/Context;

.field private mDataThread:Ljava/lang/Thread;

.field public mDiscPlusListCursor:Landroid/database/Cursor;

.field public mDiscPlusListInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/DiscPlusListInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDiscPlusNowPosition:I

.field public mDiscPlusType:I

.field private mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

.field public mIsPlayed:Z

.field public mIsThreadStop:Z

.field public mListViewDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/ListViewData;",
            ">;"
        }
    .end annotation
.end field

.field public mLoopStop:Z

.field private mMusicDB:Lcom/android/music/common/data/MusicDB;

.field public mReDefineDiscPlusListInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/DiscPlusListInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/discplus/data/DiscPlusData;->mInstance:Lcom/android/music/discplus/data/DiscPlusData;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mContext:Landroid/content/Context;

    .line 42
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 43
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mAlphabet:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 47
    iput v2, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    .line 48
    iput-boolean v2, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsPlayed:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/music/discplus/data/DiscPlusData;->mLoopStop:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    .line 52
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 53
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    .line 54
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    .line 59
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    .line 62
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    .line 63
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    .line 258
    new-instance v0, Lcom/android/music/discplus/data/DiscPlusData$1;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/data/DiscPlusData$1;-><init>(Lcom/android/music/discplus/data/DiscPlusData;)V

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->doAlphabetViewTypeDiscPlusListInfo:Ljava/lang/Runnable;

    .line 569
    new-instance v0, Lcom/android/music/discplus/data/DiscPlusData$2;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/data/DiscPlusData$2;-><init>(Lcom/android/music/discplus/data/DiscPlusData;)V

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->doNameViewTypeDiscPlusListInfo:Ljava/lang/Runnable;

    .line 662
    new-instance v0, Lcom/android/music/discplus/data/DiscPlusData$3;

    invoke-direct {v0, p0}, Lcom/android/music/discplus/data/DiscPlusData$3;-><init>(Lcom/android/music/discplus/data/DiscPlusData;)V

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->doNumberViewTypeDiscPlusListInfo:Ljava/lang/Runnable;

    .line 80
    iput-object p1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 84
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mCollator:Ljava/text/Collator;

    .line 85
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/discplus/data/DiscPlusData;)Lcom/android/music/common/data/MusicDB;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/music/discplus/data/DiscPlusData;Lcom/android/music/common/data/MusicDB;)Lcom/android/music/common/data/MusicDB;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/music/discplus/data/DiscPlusData;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/discplus/data/DiscPlusData;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mAlphabet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/music/discplus/data/DiscPlusData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mAlphabet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/music/discplus/data/DiscPlusData;Landroid/database/Cursor;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/music/discplus/data/DiscPlusData;->getCursorCount(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/music/discplus/data/DiscPlusData;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/music/discplus/data/DiscPlusData;->startListener(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/music/discplus/data/DiscPlusData;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/music/discplus/data/DiscPlusData;->endListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/music/discplus/data/DiscPlusData;ILjava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/music/discplus/data/DiscPlusData;->compareAlphabetIndex(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/music/discplus/data/DiscPlusData;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/music/discplus/data/DiscPlusData;->updateListener()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/music/discplus/data/DiscPlusData;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/music/discplus/data/DiscPlusData;->getNumberTypeFocusedIndex(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private compareAlphabetIndex(ILjava/lang/String;I)Z
    .locals 5
    .parameter "type"
    .parameter "word"
    .parameter "leftIndex"

    .prologue
    .line 1194
    const/4 v2, 0x0

    .line 1195
    .local v2, rtn:Z
    iget-object v3, p0, Lcom/android/music/discplus/data/DiscPlusData;->mAlphabet:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 1196
    .local v0, alphabetArraryLen:I
    add-int/lit8 v3, p3, 0x1

    const/4 v4, 0x1

    sub-int v4, v0, v4

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, p3, 0x1

    move v1, v3

    .line 1198
    .local v1, rightIndex:I
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1217
    :goto_1
    return v2

    .end local v1           #rightIndex:I
    :cond_0
    move v1, p3

    .line 1196
    goto :goto_0

    .line 1208
    .restart local v1       #rightIndex:I
    :sswitch_0
    invoke-direct {p0, p2, p3, v1}, Lcom/android/music/discplus/data/DiscPlusData;->compareForCollatorAlphabetIndex(Ljava/lang/String;II)Z

    move-result v2

    .line 1209
    goto :goto_1

    .line 1213
    :sswitch_1
    invoke-direct {p0, p2, p3, v1}, Lcom/android/music/discplus/data/DiscPlusData;->compareForCollatorAlphabetIndex(Ljava/lang/String;II)Z

    move-result v2

    goto :goto_1

    .line 1198
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method private compareForCollatorAlphabetIndex(Ljava/lang/String;II)Z
    .locals 6
    .parameter "word"
    .parameter "iLeft"
    .parameter "iRight"

    .prologue
    const/4 v5, 0x1

    .line 1247
    iget-object v4, p0, Lcom/android/music/discplus/data/DiscPlusData;->mAlphabet:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 1248
    .local v1, leftIndexStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/discplus/data/DiscPlusData;->mAlphabet:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .line 1249
    .local v3, rightIndexStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/discplus/data/DiscPlusData;->mCollator:Ljava/text/Collator;

    invoke-virtual {v4, p1, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1250
    .local v0, lValue:I
    iget-object v4, p0, Lcom/android/music/discplus/data/DiscPlusData;->mCollator:Ljava/text/Collator;

    invoke-virtual {v4, p1, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1252
    .local v2, rValue:I
    if-nez v0, :cond_0

    move v4, v5

    .line 1260
    :goto_0
    return v4

    .line 1256
    :cond_0
    if-ltz v0, :cond_1

    if-gez v2, :cond_1

    move v4, v5

    .line 1257
    goto :goto_0

    .line 1260
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/android/music/discplus/data/DiscPlusData;
    .locals 2
    .parameter "context"

    .prologue
    .line 125
    const-class v0, Lcom/android/music/discplus/data/DiscPlusData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/discplus/data/DiscPlusData;->mInstance:Lcom/android/music/discplus/data/DiscPlusData;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/android/music/discplus/data/DiscPlusData;

    invoke-direct {v1, p0}, Lcom/android/music/discplus/data/DiscPlusData;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/music/discplus/data/DiscPlusData;->mInstance:Lcom/android/music/discplus/data/DiscPlusData;

    .line 128
    :cond_0
    sget-object v1, Lcom/android/music/discplus/data/DiscPlusData;->mInstance:Lcom/android/music/discplus/data/DiscPlusData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private endListener()V
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    .line 1145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    .line 1147
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->end()V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->end()V

    .line 1154
    :cond_1
    return-void
.end method

.method private getCursorCount(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 164
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method private getNumberTypeFocusedIndex(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .parameter "strYear"
    .parameter "isLast"

    .prologue
    const/16 v5, 0x7d0

    const v6, 0x3dcccccd

    const-wide/high16 v7, 0x4024

    const-string v9, "s"

    .line 1162
    const/4 v1, 0x0

    .line 1163
    .local v1, focusedIndex:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1165
    .local v3, year:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1175
    if-eqz p2, :cond_0

    if-ge v3, v5, :cond_0

    .line 1176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-float v5, v3

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 1186
    .end local v1           #focusedIndex:Ljava/lang/String;
    .local v2, focusedIndex:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1166
    .end local v2           #focusedIndex:Ljava/lang/String;
    .restart local v1       #focusedIndex:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v1

    .line 1167
    .end local v1           #focusedIndex:Ljava/lang/String;
    .restart local v2       #focusedIndex:Ljava/lang/String;
    goto :goto_1

    .line 1179
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #focusedIndex:Ljava/lang/String;
    .restart local v1       #focusedIndex:Ljava/lang/String;
    :cond_0
    if-ge v3, v5, :cond_1

    .line 1180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v5, v3

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1182
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "string"

    .prologue
    .line 1190
    if-nez p1, :cond_0

    const-string v0, "<unknown>"

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private isAbleDrawPosition(IIIFLjava/util/ArrayList;)Z
    .locals 10
    .parameter "viewType"
    .parameter "index"
    .parameter "position"
    .parameter "drawDegree"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIF",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/DiscPlusListInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 815
    .local p5, discPlusListInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/DiscPlusListInfo;>;"
    const/4 v7, -0x1

    .line 816
    .local v7, oldPosition:I
    const/4 v5, 0x0

    .line 817
    .local v5, isAbleDraw:Z
    move v0, p4

    .line 818
    .local v0, degree:F
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 819
    .local v6, loopCount:I
    add-int/lit8 v4, p2, 0x1

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 820
    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/discplus/data/DiscPlusListInfo;

    .line 821
    .local v1, discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    move v2, v4

    .line 822
    .local v2, drawPosition:I
    iget v8, v1, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    .line 823
    .local v8, startDegree:F
    iget v3, v1, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    .line 825
    .local v3, endDegree:F
    if-eq p3, v2, :cond_0

    if-eq v7, p3, :cond_0

    .line 826
    sub-float v9, v3, v8

    add-float/2addr v0, v9

    .line 827
    move v7, v2

    .line 830
    :cond_0
    const/high16 v9, 0x41c8

    cmpl-float v9, v0, v9

    if-ltz v9, :cond_2

    .line 831
    const/4 v5, 0x1

    .line 836
    .end local v1           #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local v2           #drawPosition:I
    .end local v3           #endDegree:F
    .end local v8           #startDegree:F
    :cond_1
    return v5

    .line 819
    .restart local v1       #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .restart local v2       #drawPosition:I
    .restart local v3       #endDegree:F
    .restart local v8       #startDegree:F
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private isContinuedListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1113
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_4

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0, v2}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->isContinued(Z)V

    .line 1117
    iput-object v4, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    .line 1123
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v0, :cond_3

    .line 1124
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_5

    .line 1126
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0, v2}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->isContinued(Z)V

    .line 1127
    iput-object v4, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    .line 1132
    :cond_3
    :goto_1
    return-void

    .line 1119
    :cond_4
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0, v3}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->isContinued(Z)V

    goto :goto_0

    .line 1129
    :cond_5
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0, v3}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->isContinued(Z)V

    goto :goto_1
.end method

.method private reDefineSubDiscPlusListInfos(IIFFLjava/util/ArrayList;)V
    .locals 4
    .parameter "index"
    .parameter "drawPosition"
    .parameter "drawStartDegree"
    .parameter "drawEndDegree"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFF",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/DiscPlusListInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 841
    .local p5, discPlusLIstInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/DiscPlusListInfo;>;"
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 842
    if-eqz p5, :cond_1

    .line 843
    iget-object v2, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v2

    .line 844
    :try_start_0
    iget-object v3, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v1, :cond_2

    :cond_0
    monitor-exit v2

    .line 860
    :cond_1
    return-void

    .line 845
    :cond_2
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/discplus/data/DiscPlusListInfo;

    .line 846
    .local v0, discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    if-eqz v0, :cond_3

    .line 847
    iput p2, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawPosition:I

    .line 848
    iput p3, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawStartDegree:F

    .line 849
    iput p4, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawEndDegree:F

    .line 851
    :cond_3
    monitor-exit v2

    .line 856
    if-eq p2, v1, :cond_1

    .line 841
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 851
    .end local v0           #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private startListener(I)V
    .locals 1
    .parameter "cursorCount"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0, p1}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->start(I)V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v0, :cond_1

    .line 1108
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0, p1}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->start(I)V

    .line 1110
    :cond_1
    return-void
.end method

.method private updateListener()V
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->update()V

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    if-nez v0, :cond_1

    .line 1139
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    invoke-interface {v0}, Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;->update()V

    .line 1141
    :cond_1
    return-void
.end method


# virtual methods
.method public clearDiscPlusListInfos()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/music/discplus/data/DiscPlusData;->stopThread()V

    .line 135
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v0

    .line 144
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mReDefineDiscPlusListInfos:Ljava/util/ArrayList;

    .line 145
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    monitor-enter v0

    .line 150
    :try_start_2
    iget-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 152
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    iput-object v2, p0, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    .line 160
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 161
    return-void

    .line 139
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 145
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 152
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public getAudioItemCount()I
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 181
    .local v0, cursorCount:I
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/common/manager/MusicAppManager;->getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;

    move-result-object v1

    iget v0, v1, Lcom/android/music/common/manager/MusicAppManageFilter;->allItemCount:I

    .line 183
    return v0
.end method

.method public getDiscPlusListInfo(ZILjava/lang/String;ILandroid/database/Cursor;I)Lcom/android/music/discplus/data/DiscPlusListInfoInData;
    .locals 7
    .parameter "isTopView"
    .parameter "position"
    .parameter "focuedIndex"
    .parameter "type"
    .parameter "cursor"
    .parameter "cursorCount"

    .prologue
    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, lFocuedIndex:Ljava/lang/String;
    const/4 v2, 0x0

    .line 190
    .local v2, itemTitle:Ljava/lang/String;
    const/4 v3, 0x0

    .line 191
    .local v3, artistName:Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 193
    .local v4, resId:J
    if-eqz p5, :cond_1

    if-ltz p2, :cond_1

    if-ge p2, p6, :cond_1

    if-lez p6, :cond_1

    .line 194
    monitor-enter p5

    .line 195
    :try_start_0
    invoke-interface {p5, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    monitor-exit p5

    .line 255
    :goto_0
    return-object v0

    .line 199
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 242
    :goto_1
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeIdIndex(I)I

    move-result v6

    .line 243
    .local v6, idIndex:I
    const/4 v0, 0x5

    if-ne p4, v0, :cond_3

    .line 244
    invoke-static {v2}, Lcom/android/music/discplus/util/DiscPlusUtils;->getGenreThumbnailRsrcID(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 252
    :goto_2
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v6           #idIndex:I
    :cond_1
    new-instance v0, Lcom/android/music/discplus/data/DiscPlusListInfoInData;

    invoke-direct/range {v0 .. v5}, Lcom/android/music/discplus/data/DiscPlusListInfoInData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 201
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeArtistNameIndex(I)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    goto :goto_1

    .line 206
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    goto :goto_1

    .line 210
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeArtistNameIndex(I)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    goto :goto_1

    .line 215
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    goto :goto_1

    .line 219
    :pswitch_4
    if-eqz p1, :cond_2

    invoke-direct {p0, p3}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 221
    :goto_3
    goto :goto_1

    .line 219
    :cond_2
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    .line 232
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    goto/16 :goto_1

    .line 236
    :pswitch_6
    invoke-static {p4}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/discplus/data/DiscPlusData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    goto/16 :goto_1

    .line 246
    .restart local v6       #idIndex:I
    :cond_3
    const/4 v0, 0x2

    if-eq p4, v0, :cond_4

    .line 247
    const-string v0, "album_id"

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto/16 :goto_2

    .line 249
    :cond_4
    invoke-interface {p5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto/16 :goto_2

    .line 252
    .end local v6           #idIndex:I
    :catchall_0
    move-exception v0

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public getTypeDiscPlusListInfos(ZII)V
    .locals 5
    .parameter "isDataChang"
    .parameter "type"
    .parameter "byDataViewType"

    .prologue
    const/4 v3, 0x0

    const-string v4, "DataThread"

    .line 965
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    if-ne v0, p2, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 968
    :cond_0
    invoke-virtual {p0}, Lcom/android/music/discplus/data/DiscPlusData;->stopThread()V

    .line 969
    iput p2, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    .line 971
    packed-switch p2, :pswitch_data_0

    .line 988
    iput-object v3, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    .line 992
    :goto_0
    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 996
    :cond_1
    :goto_1
    return-void

    .line 979
    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->doAlphabetViewTypeDiscPlusListInfo:Ljava/lang/Runnable;

    const-string v2, "DataThread"

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    goto :goto_0

    .line 982
    :pswitch_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->doNameViewTypeDiscPlusListInfo:Ljava/lang/Runnable;

    const-string v2, "DataThread"

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    goto :goto_0

    .line 985
    :pswitch_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->doNumberViewTypeDiscPlusListInfo:Ljava/lang/Runnable;

    const-string v2, "DataThread"

    invoke-direct {v0, v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    goto :goto_0

    .line 994
    :cond_2
    invoke-direct {p0}, Lcom/android/music/discplus/data/DiscPlusData;->isContinuedListener()V

    goto :goto_1

    .line 971
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getTypeDiscPlusListView(II)Ljava/util/ArrayList;
    .locals 27
    .parameter "type"
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/ListViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 1000
    :cond_0
    const/16 v22, 0x0

    .line 1099
    :goto_0
    return-object v22

    .line 1003
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/data/DiscPlusData;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 1006
    const/16 v22, 0x0

    goto :goto_0

    .line 1010
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 1011
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    .line 1016
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 1017
    const/16 v17, -0x1

    .line 1018
    .local v17, idIndex:I
    const/4 v9, -0x1

    .line 1019
    .local v9, audioIdIndex:I
    const/16 v18, -0x1

    .line 1020
    .local v18, nameIndex:I
    const/4 v11, 0x0

    .line 1022
    .local v11, cursorCount:I
    packed-switch p1, :pswitch_data_0

    .line 1099
    .end local v9           #audioIdIndex:I
    .end local v11           #cursorCount:I
    .end local v17           #idIndex:I
    .end local v18           #nameIndex:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    goto :goto_0

    .line 1013
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 1024
    .restart local v9       #audioIdIndex:I
    .restart local v11       #cursorCount:I
    .restart local v17       #idIndex:I
    .restart local v18       #nameIndex:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->getCursorCount(Landroid/database/Cursor;)I

    move-result v11

    .line 1025
    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeIdIndex(I)I

    move-result v17

    .line 1026
    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeAudioIdIndex(I)I

    move-result v9

    .line 1027
    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v18

    .line 1029
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    if-ge v15, v11, :cond_3

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1032
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1034
    .local v16, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1035
    .local v7, audioId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1036
    .local v21, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/music/discplus/data/ListViewData;

    move-object/from16 v0, v24

    move/from16 v1, v16

    move-wide v2, v7

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/data/ListViewData;-><init>(IJLjava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    monitor-exit v22

    .line 1029
    .end local v7           #audioId:J
    .end local v16           #id:I
    .end local v21           #title:Ljava/lang/String;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1037
    :catchall_0
    move-exception v23

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 1049
    .end local v15           #i:I
    :pswitch_1
    const-wide/16 v5, 0x0

    .line 1050
    .local v5, _id:J
    const/16 v19, 0x0

    .line 1051
    .local v19, string:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1053
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeIdIndex(I)I

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListCursor:Landroid/database/Cursor;

    move-object/from16 v23, v0

    invoke-static/range {p1 .. p1}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1056
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1059
    :cond_6
    const-wide/16 v22, 0x0

    cmp-long v22, v5, v22

    if-gtz v22, :cond_7

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_3

    .line 1060
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/music/common/util/ListType;->getDiscPlusSubListType(Landroid/content/Context;ILjava/lang/String;)I

    move-result v20

    .line 1061
    .local v20, subListType:I
    new-instance v14, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v14}, Lcom/android/music/common/data/MpListFilter;-><init>()V

    .line 1062
    .local v14, filter:Lcom/android/music/common/data/MpListFilter;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v14

    iput-object v0, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    .line 1063
    move-object v0, v14

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v25, 0x1

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v24

    move-object v1, v14

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v24, v22, v23

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mMusicDB:Lcom/android/music/common/data/MusicDB;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v20

    move-object v2, v14

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1067
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1068
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->getCursorCount(Landroid/database/Cursor;)I

    move-result v11

    .line 1069
    invoke-static/range {v20 .. v20}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeIdIndex(I)I

    move-result v17

    .line 1070
    invoke-static/range {v20 .. v20}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeAudioIdIndex(I)I

    move-result v9

    .line 1071
    invoke-static/range {v20 .. v20}, Lcom/android/music/common/util/ListType;->getDiscPlusTypeItemTitleIndex(I)I

    move-result v18

    .line 1072
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1073
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    if-ge v15, v11, :cond_9

    .line 1074
    move-object v0, v10

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1075
    .restart local v16       #id:I
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1076
    .restart local v7       #audioId:J
    move-object v0, v10

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1078
    .restart local v21       #title:Ljava/lang/String;
    invoke-static {}, Lcom/android/music/common/util/ListUtil;->FEATURE_MUSIC_PLAYLIST()Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0xd

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1079
    const-string v22, "_data"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1080
    .local v12, data:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1081
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_8

    .line 1082
    const-string v22, "_data"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/music/common/util/ListUtil;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1083
    const-wide/16 v7, -0x1

    .line 1087
    .end local v12           #data:Ljava/lang/String;
    .end local v13           #file:Ljava/io/File;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mListViewDatas:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/music/discplus/data/ListViewData;

    move-object/from16 v0, v23

    move/from16 v1, v16

    move-wide v2, v7

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/music/discplus/data/ListViewData;-><init>(IJLjava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 1073
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1056
    .end local v7           #audioId:J
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v14           #filter:Lcom/android/music/common/data/MpListFilter;
    .end local v15           #i:I
    .end local v16           #id:I
    .end local v20           #subListType:I
    .end local v21           #title:Ljava/lang/String;
    :catchall_1
    move-exception v23

    :try_start_2
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v23

    .line 1090
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v14       #filter:Lcom/android/music/common/data/MpListFilter;
    .restart local v15       #i:I
    .restart local v20       #subListType:I
    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 1022
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public reDefineDiscPlusListInfos(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 20
    .parameter "viewType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/DiscPlusListInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/discplus/data/DiscPlusListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    .local p2, discPlusListInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/music/discplus/data/DiscPlusListInfo;>;"
    if-nez p2, :cond_2

    const/4 v2, 0x0

    move/from16 v17, v2

    .line 865
    .local v17, loopCount:I
    :goto_0
    if-lez v17, :cond_13

    .line 866
    const/16 v2, 0x65

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_6

    .line 868
    const/high16 v2, 0x43b4

    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    div-float v14, v2, v3

    .line 869
    .local v14, divideDegree:F
    const/4 v10, 0x0

    .line 870
    .local v10, drawStartDegree:F
    const/4 v11, 0x0

    .line 872
    .local v11, drawEndDegree:F
    const/4 v4, 0x0

    .end local p1
    .local v4, i:I
    :goto_1
    move v0, v4

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    .line 873
    const/4 v2, 0x1

    sub-int v2, v17, v2

    if-ne v4, v2, :cond_3

    const/high16 v2, 0x43b4

    move v11, v2

    .line 874
    :goto_2
    const/4 v13, 0x0

    .line 875
    .local v13, discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v2, v0

    if-eqz v2, :cond_1

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v2, v0

    monitor-enter v2

    .line 877
    if-eqz p2, :cond_0

    if-eqz p2, :cond_4

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v4, :cond_4

    :cond_0
    const/4 v3, 0x0

    move-object v13, v3

    .line 880
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    :cond_1
    if-nez v13, :cond_5

    .line 884
    const/4 v2, 0x0

    .line 961
    .end local v4           #i:I
    .end local v10           #drawStartDegree:F
    .end local v11           #drawEndDegree:F
    .end local v13           #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local v14           #divideDegree:F
    :goto_4
    return-object v2

    .line 864
    .end local v17           #loopCount:I
    .restart local p1
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v17, v2

    goto :goto_0

    .line 873
    .end local p1
    .restart local v4       #i:I
    .restart local v10       #drawStartDegree:F
    .restart local v11       #drawEndDegree:F
    .restart local v14       #divideDegree:F
    .restart local v17       #loopCount:I
    :cond_3
    add-float v2, v10, v14

    move v11, v2

    goto :goto_2

    .line 877
    .restart local v13       #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    :cond_4
    :try_start_1
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/music/discplus/data/DiscPlusListInfo;

    move-object/from16 v13, p1

    goto :goto_3

    .line 880
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 887
    :cond_5
    iput v10, v13, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    .line 888
    iput v11, v13, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    .line 889
    iput v4, v13, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawPosition:I

    .line 890
    iput v10, v13, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawStartDegree:F

    .line 891
    iput v11, v13, Lcom/android/music/discplus/data/DiscPlusListInfo;->mDrawEndDegree:F

    .line 892
    add-float/2addr v10, v14

    .line 872
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 895
    .end local v4           #i:I
    .end local v10           #drawStartDegree:F
    .end local v11           #drawEndDegree:F
    .end local v13           #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local v14           #divideDegree:F
    .restart local p1
    :cond_6
    const/16 v16, 0x0

    .line 896
    .local v16, isDraw:Z
    const/16 v18, -0x1

    .line 897
    .local v18, oldDrawPosition:I
    const/4 v9, -0x1

    .line 898
    .local v9, drawPosition:I
    const/4 v10, 0x0

    .line 899
    .restart local v10       #drawStartDegree:F
    const/4 v11, 0x0

    .line 902
    .restart local v11       #drawEndDegree:F
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5
    move v0, v4

    move/from16 v1, v17

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    move v2, v0

    if-eqz v2, :cond_13

    .line 903
    const/4 v13, 0x0

    .line 904
    .restart local v13       #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v2, v0

    if-eqz v2, :cond_8

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusListInfos:Ljava/util/ArrayList;

    move-object v3, v0

    monitor-enter v3

    .line 906
    if-eqz p2, :cond_7

    if-eqz p2, :cond_9

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v4, :cond_9

    :cond_7
    const/4 v2, 0x0

    move-object v13, v2

    .line 909
    :goto_6
    monitor-exit v3

    .line 912
    :cond_8
    if-nez v13, :cond_a

    .line 913
    const/4 v2, 0x0

    goto :goto_4

    .line 906
    :cond_9
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/discplus/data/DiscPlusListInfo;

    move-object v13, v2

    goto :goto_6

    .line 909
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 916
    :cond_a
    move v5, v4

    .line 917
    .local v5, position:I
    move-object v0, v13

    iget v0, v0, Lcom/android/music/discplus/data/DiscPlusListInfo;->mStartDegree:F

    move/from16 v19, v0

    .line 918
    .local v19, startDegree:F
    iget v15, v13, Lcom/android/music/discplus/data/DiscPlusListInfo;->mEndDegree:F

    .line 919
    .local v15, endDegree:F
    sub-float v6, v15, v19

    .line 921
    .local v6, degree:F
    const/high16 v2, 0x41c8

    cmpg-float v2, v6, v2

    if-gez v2, :cond_11

    .line 922
    move v11, v15

    .line 923
    if-nez v16, :cond_10

    .line 924
    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_f

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v7, p2

    .line 925
    invoke-direct/range {v2 .. v7}, Lcom/android/music/discplus/data/DiscPlusData;->isAbleDrawPosition(IIIFLjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 926
    const/4 v2, -0x1

    move/from16 v0, v18

    move v1, v2

    if-ne v0, v1, :cond_b

    move/from16 v18, v5

    .line 927
    :cond_b
    move v9, v5

    .line 928
    move/from16 v10, v19

    .line 929
    const/16 v16, 0x1

    .line 954
    :cond_c
    :goto_7
    if-nez v16, :cond_d

    move-object/from16 v7, p0

    move v8, v4

    move-object/from16 v12, p2

    .line 955
    invoke-direct/range {v7 .. v12}, Lcom/android/music/discplus/data/DiscPlusData;->reDefineSubDiscPlusListInfos(IIFFLjava/util/ArrayList;)V

    .line 902
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 931
    :cond_e
    const/16 v16, 0x0

    goto :goto_7

    .line 934
    :cond_f
    const/16 v16, 0x0

    goto :goto_7

    .line 937
    :cond_10
    sub-float v2, v11, v10

    const/high16 v3, 0x41c8

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c

    .line 938
    const/16 v16, 0x0

    .line 939
    move/from16 v18, v5

    goto :goto_7

    .line 943
    :cond_11
    if-nez v16, :cond_12

    move/from16 v0, v18

    move v1, v5

    if-eq v0, v1, :cond_12

    .line 944
    move v9, v5

    .line 945
    move/from16 v10, v19

    .line 951
    :goto_8
    move v11, v15

    goto :goto_7

    .line 947
    :cond_12
    const/16 v16, 0x0

    .line 948
    move/from16 v18, v5

    goto :goto_8

    .end local v4           #i:I
    .end local v5           #position:I
    .end local v6           #degree:F
    .end local v9           #drawPosition:I
    .end local v10           #drawStartDegree:F
    .end local v11           #drawEndDegree:F
    .end local v13           #discPlusListInfo:Lcom/android/music/discplus/data/DiscPlusListInfo;
    .end local v15           #endDegree:F
    .end local v16           #isDraw:Z
    .end local v18           #oldDrawPosition:I
    .end local v19           #startDegree:F
    .end local p1
    :cond_13
    move-object/from16 v2, p2

    .line 961
    goto/16 :goto_4
.end method

.method public setDiscPlusNowPosition(I)V
    .locals 1
    .parameter "nowPosition"

    .prologue
    .line 1157
    iput p1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusNowPosition:I

    .line 1158
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/music/common/manager/MusicAppManager;->getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;

    move-result-object v0

    iput p1, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 1159
    return-void
.end method

.method public setDiscPlusType()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mCollator:Ljava/text/Collator;

    .line 91
    iget-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 93
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/common/manager/MusicAppManager;->getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;

    move-result-object v0

    .line 94
    .local v0, mgrFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/music/common/manager/MusicAppManageFilter;

    .end local v0           #mgrFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    invoke-direct {v0}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 97
    .restart local v0       #mgrFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    iput v3, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 98
    iput v2, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 99
    iput v3, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 100
    const/16 v1, 0xd

    iput v1, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 101
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V

    .line 103
    iput v3, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusNowPosition(I)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    iget v1, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    invoke-static {v1}, Lcom/android/music/common/util/ListType;->getMainListType(I)I

    move-result v1

    iput v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscPlusType:I

    .line 107
    iget v1, v0, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    invoke-virtual {p0, v1}, Lcom/android/music/discplus/data/DiscPlusData;->setDiscPlusNowPosition(I)V

    goto :goto_0
.end method

.method public setDiscViewDataUpdateListener(Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDiscViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    .line 73
    return-void
.end method

.method public setTopViewDataUpdateListener(Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mTopViewDataUpdateListener:Lcom/android/music/discplus/data/DiscPlusData$DataUpdateListener;

    .line 77
    return-void
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mIsThreadStop:Z

    .line 113
    iget-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    .line 120
    invoke-direct {p0}, Lcom/android/music/discplus/data/DiscPlusData;->endListener()V

    .line 122
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 117
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/android/music/discplus/data/DiscPlusData;->mDataThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
