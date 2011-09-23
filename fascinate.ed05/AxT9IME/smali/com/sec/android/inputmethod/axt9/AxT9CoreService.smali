.class public Lcom/sec/android/inputmethod/axt9/AxT9CoreService;
.super Ljava/lang/Object;
.source "AxT9CoreService.java"


# static fields
.field private static mASDBBuffer:[B

.field private static mCDBBuffer:[B

.field private static mUDBBuffer:[B


# instance fields
.field public final ASDB_DB_TYPE:B

.field public final CDB_DB_TYPE:B

.field private final DEBUG:Z

.field private EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final EMPTY_MULTITAP_SEQ:[S

.field private final ERROR:Z

.field private final ET9ASPCMODE_EXACT:B

.field private final ET9ASPCMODE_OFF:B

.field private final ET9ASPCMODE_REGIONAL:B

.field private final INFO:Z

.field private final INPUT_TYPE_KEYPAD:I

.field private final INPUT_TYPE_PHONEPAD:I

.field private final INPUT_TYPE_QWERTY:I

.field final KEYMAP_KEYPAD:[S

.field final KEYMAP_PHONEPAD:[S

.field final KEYMAP_PHONEPAD_KR:[S

.field final KEYMAP_QWERTY:[S

.field final KEYMAP_QWERTY_BG:[S

.field final KEYMAP_QWERTY_DE:[S

.field final KEYMAP_QWERTY_EURO:[S

.field final KEYMAP_QWERTY_FR:[S

.field final KEYMAP_QWERTY_KR:[S

.field final KEYMAP_QWERTY_RU:[S

.field final KEYMAP_QWERTY_UK:[S

.field public final UDB_DB_TYPE:B

.field mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

.field private mAutoAppendOn:Z

.field private mAutoSubstitutionOn:Z

.field private mCompletionOn:Z

.field private mContext:Landroid/content/Context;

.field private mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

.field private mCorrectionOn:Z

.field private mDefaultActiveWordIndex:B

.field mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

.field private mInitialized:Z

.field private mInputKeyMode:I

.field private mInputLanguageId:S

.field private mInputType:I

.field private mLanguageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictionOn:Z

.field private mRecaptureOn:Z

.field private mRegionalCorrectionOn:Z

.field private mSelTotalWords:B

.field private mSuggestion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mT9Language:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field private mValidLangList:[Z

.field final wENGLISH_HPD:S

.field final wENGLISH_KPD:S

.field final wFRENCH_HPD:S

.field final wGENERIC_HQR:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/16 v0, 0x5000

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    .line 85
    const/16 v0, 0x800

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCDBBuffer:[B

    .line 86
    const/16 v0, 0x2800

    new-array v0, v0, [B

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0x1a

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->DEBUG:Z

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->INFO:Z

    .line 41
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ERROR:Z

    .line 44
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    .line 47
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInitialized:Z

    .line 63
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ET9ASPCMODE_OFF:B

    .line 64
    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ET9ASPCMODE_EXACT:B

    .line 65
    iput-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ET9ASPCMODE_REGIONAL:B

    .line 70
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->UDB_DB_TYPE:B

    .line 71
    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->CDB_DB_TYPE:B

    .line 72
    iput-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ASDB_DB_TYPE:B

    .line 98
    new-array v0, v2, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_KR:[S

    .line 101
    new-array v0, v5, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_RU:[S

    .line 105
    new-array v0, v5, [S

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_UK:[S

    .line 109
    new-array v0, v5, [S

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_BG:[S

    .line 113
    new-array v0, v2, [S

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_EURO:[S

    .line 116
    new-array v0, v2, [S

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_FR:[S

    .line 119
    new-array v0, v2, [S

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_DE:[S

    .line 122
    new-array v0, v2, [S

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY:[S

    .line 125
    const/16 v0, 0xa

    new-array v0, v0, [S

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_PHONEPAD:[S

    .line 126
    const/16 v0, 0xa

    new-array v0, v0, [S

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_PHONEPAD_KR:[S

    .line 127
    new-array v0, v2, [S

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_KEYPAD:[S

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->EMPTY_LIST:Ljava/util/List;

    .line 133
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->EMPTY_MULTITAP_SEQ:[S

    .line 137
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    .line 138
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    .line 139
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    .line 140
    iput-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    .line 142
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    .line 144
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->INPUT_TYPE_QWERTY:I

    .line 145
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->INPUT_TYPE_PHONEPAD:I

    .line 146
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->INPUT_TYPE_KEYPAD:I

    .line 151
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    .line 152
    const/16 v0, 0x9

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 154
    const/16 v0, 0x9ff

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->wGENERIC_HQR:S

    .line 155
    const/16 v0, 0x60c

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->wFRENCH_HPD:S

    .line 156
    const/16 v0, 0x609

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->wENGLISH_HPD:S

    .line 157
    const/16 v0, 0x509

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->wENGLISH_KPD:S

    .line 160
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mContext:Landroid/content/Context;

    .line 161
    return-void

    .line 98
    nop

    :array_0
    .array-data 0x2
        0xat 0x0t
        0x17t 0x0t
        0x15t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x7t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x19t 0x0t
        0x18t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x16t 0x0t
        0x1t 0x0t
        0x14t 0x0t
        0x5t 0x0t
        0x13t 0x0t
    .end array-data

    .line 101
    :array_1
    .array-data 0x2
        0xdt 0x0t
        0x1bt 0x0t
        0xct 0x0t
        0x6t 0x0t
        0x12t 0x0t
        0x4t 0x0t
        0x13t 0x0t
        0x9t 0x0t
        0x18t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x11t 0x0t
        0x17t 0x0t
        0x5t 0x0t
        0x10t 0x0t
        0xet 0x0t
        0xft 0x0t
        0x16t 0x0t
        0x19t 0x0t
        0x2t 0x0t
        0xat 0x0t
        0x1dt 0x0t
        0x1t 0x0t
        0x15t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x1et 0x0t
        0xbt 0x0t
        0x1at 0x0t
        0x1ft 0x0t
        0x1ct 0x0t
        0x14t 0x0t
    .end array-data

    .line 105
    :array_2
    .array-data 0x2
        0xdt 0x0t
        0x1bt 0x0t
        0xct 0x0t
        0x6t 0x0t
        0x12t 0x0t
        0x4t 0x0t
        0x13t 0x0t
        0x9t 0x0t
        0x18t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x11t 0x0t
        0x17t 0x0t
        0x5t 0x0t
        0x10t 0x0t
        0xet 0x0t
        0xft 0x0t
        0x16t 0x0t
        0x19t 0x0t
        0x2t 0x0t
        0xat 0x0t
        0x1dt 0x0t
        0x1t 0x0t
        0x15t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x1at 0x0t
        0x1ct 0x0t
        0x14t 0x0t
        0x1ft 0x0t
        0xbt 0x0t
        0x1et 0x0t
    .end array-data

    .line 109
    :array_3
    .array-data 0x2
        0xft 0x0t
        0x1et 0x0t
        0xet 0x0t
        0x6t 0x0t
        0x14t 0x0t
        0x4t 0x0t
        0x15t 0x0t
        0x9t 0x0t
        0x1bt 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x13t 0x0t
        0x1at 0x0t
        0x5t 0x0t
        0x12t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x19t 0x0t
        0x1ct 0x0t
        0x2t 0x0t
        0xct 0x0t
        0xat 0x0t
        0x1t 0x0t
        0x18t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x1et 0x0t
        0xdt 0x0t
        0x1dt 0x0t
        0x16t 0x0t
        0x1ft 0x0t
        0x17t 0x0t
    .end array-data

    .line 113
    :array_4
    .array-data 0x2
        0xbt 0x0t
        0x1at 0x0t
        0x18t 0x0t
        0xdt 0x0t
        0x2t 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x7t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x1ct 0x0t
        0x1bt 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0xct 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x19t 0x0t
        0x1t 0x0t
        0x17t 0x0t
        0x5t 0x0t
        0x16t 0x0t
    .end array-data

    .line 116
    :array_5
    .array-data 0x2
        0x0t 0x0t
        0x17t 0x0t
        0x15t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x7t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x19t 0x0t
        0x18t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x16t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x5t 0x0t
        0x1t 0x0t
    .end array-data

    .line 119
    :array_6
    .array-data 0x2
        0xat 0x0t
        0x17t 0x0t
        0x15t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x7t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x19t 0x0t
        0x18t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x16t 0x0t
        0x1t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x5t 0x0t
    .end array-data

    .line 122
    :array_7
    .array-data 0x2
        0xat 0x0t
        0x17t 0x0t
        0x15t 0x0t
        0xct 0x0t
        0x2t 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x7t 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x19t 0x0t
        0x18t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x4t 0x0t
        0x6t 0x0t
        0x16t 0x0t
        0x1t 0x0t
        0x14t 0x0t
        0x5t 0x0t
        0x13t 0x0t
    .end array-data

    .line 125
    :array_8
    .array-data 0x2
        0x9t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
    .end array-data

    .line 126
    :array_9
    .array-data 0x2
        0xat 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
    .end array-data

    .line 127
    :array_a
    .array-data 0x2
        0x5t 0x0t
        0xct 0x0t
        0xbt 0x0t
        0x6t 0x0t
        0x1t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x3t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xdt 0x0t
        0xct 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x5t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0xbt 0x0t
        0x0t 0x0t
        0xat 0x0t
        0x2t 0x0t
        0xat 0x0t
    .end array-data
.end method

.method public static getASDBBuffer()[B
    .locals 1

    .prologue
    .line 1436
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    return-object v0
.end method

.method public static getUDBBuffer()[B
    .locals 1

    .prologue
    .line 1428
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    return-object v0
.end method

.method private initSubLinguistic()V
    .locals 4

    .prologue
    const-string v3, "AxT9IME"

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->reInit()S

    move-result v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.Init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->WordSymbInit(Z)S

    move-result v0

    .line 199
    if-eqz v0, :cond_1

    .line 200
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WordSymbInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;->Init()S

    move-result v0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKOLinguistic.Init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbInit()S

    move-result v0

    .line 210
    if-eqz v0, :cond_3

    .line 211
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.LdbInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    return-void
.end method

.method private lookupChar(S)S
    .locals 10
    .parameter "wKey"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x2

    const/16 v7, 0x7a

    const/16 v6, 0x14

    const/16 v5, 0x61

    .line 1045
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    if-nez v3, :cond_1

    .line 1046
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_PHONEPAD_KR:[S

    move-object v2, v3

    .line 1062
    .local v2, keyMap:[S
    :goto_0
    const/16 v3, 0x30

    if-lt p1, v3, :cond_19

    const/16 v3, 0x39

    if-gt p1, v3, :cond_19

    .line 1063
    const/16 v3, 0x30

    sub-int v3, p1, v3

    aget-short v3, v2, v3

    .line 1144
    .end local v2           #keyMap:[S
    :goto_1
    return v3

    .line 1046
    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_PHONEPAD:[S

    move-object v2, v3

    goto :goto_0

    .line 1065
    :cond_1
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1066
    if-lt p1, v5, :cond_19

    if-gt p1, v7, :cond_19

    .line 1067
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_KEYPAD:[S

    sub-int v4, p1, v5

    aget-short v3, v3, v4

    goto :goto_1

    .line 1070
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1071
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_KR:[S

    .line 1072
    .restart local v2       #keyMap:[S
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getShiftMode()B

    move-result v3

    if-eqz v3, :cond_6

    .line 1073
    if-lt p1, v5, :cond_6

    if-gt p1, v7, :cond_6

    .line 1074
    const/16 v0, 0x1a

    .line 1075
    .local v0, SHIFTED_KEY_MIN_INDEX:S
    sub-int v3, p1, v5

    aget-short v1, v2, v3

    .line 1076
    .local v1, keyIndex:S
    if-ltz v1, :cond_3

    const/16 v3, 0x9

    if-gt v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1a

    :goto_2
    int-to-short v3, v3

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    .line 1080
    .end local v0           #SHIFTED_KEY_MIN_INDEX:S
    .end local v1           #keyIndex:S
    .end local v2           #keyMap:[S
    :cond_4
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0x19

    if-eq v3, v4, :cond_5

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    if-ne v3, v5, :cond_8

    .line 1082
    :cond_5
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_RU:[S

    .line 1130
    .restart local v2       #keyMap:[S
    :cond_6
    :goto_3
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0x19

    if-eq v3, v4, :cond_7

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    if-eq v3, v8, :cond_7

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0x22

    if-eq v3, v4, :cond_7

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    if-ne v3, v5, :cond_18

    .line 1134
    :cond_7
    if-lt p1, v5, :cond_19

    const/16 v3, 0x80

    if-gt p1, v3, :cond_19

    .line 1135
    sub-int v3, p1, v5

    aget-short v3, v2, v3

    goto :goto_1

    .line 1083
    .end local v2           #keyMap:[S
    :cond_8
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0x22

    if-ne v3, v4, :cond_9

    .line 1084
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_UK:[S

    .restart local v2       #keyMap:[S
    goto :goto_3

    .line 1085
    .end local v2           #keyMap:[S
    :cond_9
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    if-ne v3, v8, :cond_a

    .line 1086
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_BG:[S

    .restart local v2       #keyMap:[S
    goto :goto_3

    .line 1087
    .end local v2           #keyMap:[S
    :cond_a
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_b

    .line 1088
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY:[S

    .restart local v2       #keyMap:[S
    goto :goto_3

    .line 1102
    .end local v2           #keyMap:[S
    :cond_b
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v4, 0x6

    if-eq v3, v4, :cond_c

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    if-ne v3, v6, :cond_10

    .line 1104
    :cond_c
    const/16 v3, 0xe5

    if-ne p1, v3, :cond_d

    move v3, v9

    .line 1105
    goto/16 :goto_1

    .line 1106
    :cond_d
    const/16 v3, 0xe6

    if-ne p1, v3, :cond_e

    move v3, v6

    .line 1107
    goto/16 :goto_1

    .line 1108
    :cond_e
    const/16 v3, 0xf8

    if-ne p1, v3, :cond_f

    .line 1109
    const/16 v3, 0x15

    goto/16 :goto_1

    .line 1111
    :cond_f
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_EURO:[S

    .restart local v2       #keyMap:[S
    goto :goto_3

    .line 1112
    .end local v2           #keyMap:[S
    :cond_10
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0xb

    if-eq v3, v4, :cond_11

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_15

    .line 1114
    :cond_11
    const/16 v3, 0xe5

    if-ne p1, v3, :cond_12

    move v3, v9

    .line 1115
    goto/16 :goto_1

    .line 1116
    :cond_12
    const/16 v3, 0xf6

    if-ne p1, v3, :cond_13

    move v3, v6

    .line 1117
    goto/16 :goto_1

    .line 1118
    :cond_13
    const/16 v3, 0xe4

    if-ne p1, v3, :cond_14

    .line 1119
    const/16 v3, 0x15

    goto/16 :goto_1

    .line 1121
    :cond_14
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_EURO:[S

    .restart local v2       #keyMap:[S
    goto :goto_3

    .line 1122
    .end local v2           #keyMap:[S
    :cond_15
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v4, 0xc

    if-ne v3, v4, :cond_16

    .line 1123
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_FR:[S

    .restart local v2       #keyMap:[S
    goto/16 :goto_3

    .line 1124
    .end local v2           #keyMap:[S
    :cond_16
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v4, 0x7

    if-ne v3, v4, :cond_17

    .line 1125
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY_DE:[S

    .restart local v2       #keyMap:[S
    goto/16 :goto_3

    .line 1127
    .end local v2           #keyMap:[S
    :cond_17
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->KEYMAP_QWERTY:[S

    .restart local v2       #keyMap:[S
    goto/16 :goto_3

    .line 1138
    :cond_18
    if-lt p1, v5, :cond_19

    if-gt p1, v7, :cond_19

    .line 1139
    sub-int v3, p1, v5

    aget-short v3, v2, v3

    goto/16 :goto_1

    .line 1144
    .end local v2           #keyMap:[S
    :cond_19
    const/16 v3, 0x80

    goto/16 :goto_1
.end method

.method private makeSuggetionList(Ljava/util/List;[Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter "words"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 989
    .local p1, suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-ge v0, v1, :cond_0

    .line 990
    aget-object v1, p2, v0

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 992
    :cond_0
    return-void
.end method

.method private setXT9InputMode()V
    .locals 4

    .prologue
    const-string v3, "AxT9IME"

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, wStatus:S
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    if-nez v1, :cond_1

    .line 616
    const/4 v0, 0x0

    .line 617
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetAmbigMode()S

    move-result v0

    .line 618
    if-eqz v0, :cond_0

    .line 619
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKdbInput.SetAmbigMode:wStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 622
    const/4 v0, 0x0

    .line 624
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetMultiTapMode()S

    move-result v0

    .line 625
    if-eqz v0, :cond_0

    .line 626
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKdbInput.SetMultiTapMode:wStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public breakContext()S
    .locals 2

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->CDBBreakContext()S

    move-result v0

    .line 1006
    .local v0, wStatus:S
    return v0
.end method

.method public changeKDBNum(II)V
    .locals 13
    .parameter "inputType"
    .parameter "editorType"

    .prologue
    .line 545
    const/4 v9, 0x0

    .line 548
    .local v9, wStatus:S
    const/4 v10, 0x1

    new-array v3, v10, [S

    .line 549
    .local v3, pwFirstKdbNum:[S
    const/4 v10, 0x1

    new-array v6, v10, [S

    .line 550
    .local v6, pwSecondKdbNum:[S
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v10, v3, v6}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->GetKdbNum([S[S)S

    move-result v9

    .line 551
    if-eqz v9, :cond_0

    .line 556
    :cond_0
    const/4 v10, 0x1

    new-array v5, v10, [S

    .line 557
    .local v5, pwFirstPageNum:[S
    const/4 v10, 0x1

    new-array v8, v10, [S

    .line 558
    .local v8, pwSecondPageNum:[S
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v10, v5, v8}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->GetPageNum([S[S)S

    move-result v9

    .line 559
    if-eqz v9, :cond_1

    .line 560
    const-string v10, "AxT9IME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mKdbInput.GetPageNum: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-short v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-short v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", wStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1
    const/4 v10, 0x1

    new-array v4, v10, [S

    .line 565
    .local v4, pwFirstLdbNum:[S
    const/4 v10, 0x1

    new-array v7, v10, [S

    .line 566
    .local v7, pwSecondLdbNum:[S
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v10, v4, v7}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbGetLanguage([S[S)S

    move-result v9

    .line 567
    if-eqz v9, :cond_2

    .line 568
    const-string v10, "AxT9IME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mKdbInput.LdbGetLanguage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-short v12, v4, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-short v12, v7, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", wStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 572
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-short v11, v4, v11

    const v12, 0xff00

    and-int/2addr v11, v12

    iget-short v12, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v4, v10

    .line 575
    :cond_3
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    .line 576
    const/4 v2, 0x0

    .line 577
    .local v2, firstPageNum:S
    const/4 v1, 0x0

    .line 579
    .local v1, firstKdbNum:S
    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    if-nez v10, :cond_6

    .line 580
    const/4 v10, 0x0

    aget-short v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    or-int/lit16 v10, v10, 0x600

    int-to-short v1, v10

    .line 597
    :goto_0
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    const/4 v11, 0x0

    aget-short v11, v6, v11

    const/4 v12, 0x0

    aget-short v12, v8, v12

    invoke-virtual {v10, v1, v2, v11, v12}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetKdbNum(SSSS)S

    move-result v9

    .line 598
    if-eqz v9, :cond_4

    .line 599
    const-string v10, "AxT9IME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mKdbInput.SetKdbNum: wStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_4
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v10, v10, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    const/4 v11, 0x0

    aget-short v11, v8, v11

    invoke-virtual {v10, v2, v11}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetPageNum(SS)S

    move-result v9

    .line 603
    if-eqz v9, :cond_5

    .line 604
    const-string v10, "AxT9IME"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mKdbInput.SetPageNum: wStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setXT9InputMode()V

    .line 608
    return-void

    .line 581
    :cond_6
    iget v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 582
    const/4 v10, 0x3

    if-ne p2, v10, :cond_7

    .line 583
    const/4 v2, 0x3

    .line 590
    :goto_1
    const/4 v10, 0x0

    aget-short v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    or-int/lit16 v10, v10, 0x500

    int-to-short v1, v10

    goto :goto_0

    .line 584
    :cond_7
    const/4 v10, 0x2

    if-ne p2, v10, :cond_8

    .line 585
    const/4 v2, 0x2

    goto :goto_1

    .line 587
    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .line 592
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v10

    if-eqz v10, :cond_a

    const/16 v10, 0x900

    move v0, v10

    .line 594
    .local v0, ET9SKID:S
    :goto_2
    const/4 v10, 0x0

    aget-short v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v10, v0

    int-to-short v1, v10

    goto :goto_0

    .line 592
    .end local v0           #ET9SKID:S
    :cond_a
    const/16 v10, 0x700

    move v0, v10

    goto :goto_2
.end method

.method public clearAllSymbs()S
    .locals 4

    .prologue
    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->ClearAllSymbs()S

    move-result v0

    .line 1252
    if-eqz v0, :cond_0

    .line 1253
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCore.mCommon.ClearAllSymbs:wStatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    return v0
.end method

.method public clearAlreadyInitFlag()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInitialized:Z

    .line 184
    return-void
.end method

.method public clearOneSymb()S
    .locals 4

    .prologue
    .line 1259
    const/4 v0, 0x0

    .line 1260
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->ClearOneSymb()S

    move-result v0

    .line 1261
    if-eqz v0, :cond_0

    .line 1262
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCore.mCommon.ClearOneSymb:wStatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->writeDBdataToFile(B)V

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->writeDBdataToFile(B)V

    .line 222
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->writeDBdataToFile(B)V

    .line 225
    return-void
.end method

.method public doRecapture(Ljava/lang/String;S)V
    .locals 3
    .parameter "word"
    .parameter "length"

    .prologue
    .line 741
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRecaptureOn:Z

    if-eqz v2, :cond_1

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 743
    .local v1, wordbuf:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 744
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 743
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 746
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v2, v1, p2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->ReselectWord([SS)S

    .line 747
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 749
    .end local v0           #i:I
    .end local v1           #wordbuf:[S
    :cond_1
    return-void
.end method

.method public explictSymb(S)S
    .locals 1
    .parameter "wKeyIndex"

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getShiftMode()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(SB)S

    move-result v0

    return v0
.end method

.method public explictSymb(SB)S
    .locals 4
    .parameter "wKeyIndex"
    .parameter "currentShiftMode"

    .prologue
    .line 1176
    const/4 v0, 0x0

    .line 1177
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->ExplicitSymb(SBB)S

    move-result v0

    .line 1178
    if-eqz v0, :cond_0

    .line 1179
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AxT9CoreService.ExplicitSymb wStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_0
    return v0
.end method

.method public getAWInputWords(I)Ljava/lang/CharSequence;
    .locals 10
    .parameter "wordIndex"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x40

    .line 943
    iget-byte v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-lez v5, :cond_5

    .line 944
    iget-byte v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-ge p1, v5, :cond_0

    move v1, p1

    .line 945
    .local v1, index:I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    int-to-byte v6, v1

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstGetWord(BLcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;)S

    move-result v4

    .line 947
    .local v4, wStatus:S
    if-eqz v4, :cond_1

    .line 948
    const-string v5, "AxT9IME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAWLinguistic.SelLstGetWord:wStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    .line 969
    .end local v1           #index:I
    .end local v4           #wStatus:S
    :goto_1
    return-object v5

    .line 944
    :cond_0
    const/4 v5, 0x0

    move v1, v5

    goto :goto_0

    .line 952
    .restart local v1       #index:I
    .restart local v4       #wStatus:S
    :cond_1
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    if-ge v5, v8, :cond_2

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    move v3, v5

    .line 954
    .local v3, size:I
    :goto_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 956
    .local v2, sb:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAutoSubstitutionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 958
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-ge v0, v5, :cond_4

    .line 959
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    aget-short v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 958
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0           #i:I
    .end local v2           #sb:Ljava/lang/StringBuffer;
    .end local v3           #size:I
    :cond_2
    move v3, v8

    .line 952
    goto :goto_2

    .line 963
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    .restart local v3       #size:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    if-ge v0, v3, :cond_4

    .line 964
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    aget-short v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 963
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 967
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #sb:Ljava/lang/StringBuffer;
    .end local v3           #size:I
    .end local v4           #wStatus:S
    :cond_5
    move-object v5, v9

    .line 969
    goto :goto_1
.end method

.method public getActiveWordIndexOfSelList()B
    .locals 1

    .prologue
    .line 832
    iget-byte v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    return v0
.end method

.method public getHangulWord()Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;
    .locals 1

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    return-object v0
.end method

.method public getInputLanguageId()S
    .locals 1

    .prologue
    .line 1468
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    return v0
.end method

.method public getInputWords()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 887
    iget-byte v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getInputWords(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "wordIndex"

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getKInputWords()Ljava/lang/CharSequence;

    move-result-object v0

    .line 894
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getAWInputWords(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getKDBStateBits()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->GetStateBits()I

    move-result v0

    return v0
.end method

.method public getKInputWords()Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 899
    const/4 v6, 0x1

    .line 900
    .local v6, wStatus:S
    new-array v3, v9, [S

    .line 901
    .local v3, multiTapSequence:[S
    new-array v5, v8, [S

    .line 902
    .local v5, totalSymbols:[S
    new-array v1, v8, [B

    .line 904
    .local v1, currentSymbol:[B
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v7, v3, v9, v5, v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->getMultiTapSequence([SS[S[B)S

    .line 906
    aget-short v7, v5, v10

    if-ne v7, v8, :cond_0

    .line 907
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->invokeTimeOut()V

    .line 908
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->EMPTY_MULTITAP_SEQ:[S

    .line 909
    aput-short v10, v5, v10

    .line 912
    :cond_0
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->init()V

    .line 913
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    aget-short v9, v5, v10

    invoke-virtual {v7, v8, v3, v9}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;->BuildHangul(Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;[SS)S

    move-result v6

    .line 914
    if-eqz v6, :cond_1

    .line 915
    const-string v7, "AxT9IME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getKInputWords.wStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_1
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    if-lez v7, :cond_2

    .line 921
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    if-ge v2, v7, :cond_2

    .line 922
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v8, v8, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->pSymbCounts:[S

    aget-short v8, v8, v2

    int-to-byte v8, v8

    invoke-virtual {v7, v10, v8}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->DeleteSymbs(BB)S

    move-result v6

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 926
    .end local v2           #i:I
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v7, 0x40

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 928
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-short v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wLen:S

    if-ge v2, v7, :cond_4

    .line 930
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v7, v7, v2

    int-to-char v7, v7

    invoke-static {v7}, Lcom/diotek/util/HangulManager;->isHangulJamo(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 931
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v7, v7, v2

    invoke-static {v7}, Lcom/diotek/util/HangulManager;->convJamoToCompatibiltyJamo(I)I

    move-result v7

    int-to-char v0, v7

    .line 935
    .local v0, code:C
    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 928
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 933
    .end local v0           #code:C
    :cond_3
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mHangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->sString:[S

    aget-short v7, v7, v2

    int-to-char v0, v7

    .restart local v0       #code:C
    goto :goto_2

    .line 938
    .end local v0           #code:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getLanguageInfoListSize()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getShiftMode()B
    .locals 2

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mCommon:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$Common;->GetStateBits()I

    move-result v0

    .line 1384
    .local v0, stateBits:I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 1385
    const/4 v1, 0x2

    .line 1389
    :goto_0
    return v1

    .line 1386
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1387
    const/4 v1, 0x1

    goto :goto_0

    .line 1389
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuggestion()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 995
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    return-object v0
.end method

.method public getSuggetionFromXT9()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x40

    .line 858
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 860
    iget-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-lez v4, :cond_3

    .line 861
    new-array v3, v5, [Ljava/lang/CharSequence;

    .line 862
    .local v3, wordList:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    if-ge v0, v4, :cond_2

    .line 868
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    .line 870
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v4, v4, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-lez v4, :cond_1

    .line 871
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 872
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v4, v4, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wSubstitutionLen:S

    if-ge v1, v4, :cond_0

    .line 873
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v4, v4, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sSubstitution:[S

    aget-short v4, v4, v1

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 872
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 875
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 862
    .end local v1           #j:I
    .end local v2           #sb:Ljava/lang/StringBuffer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 879
    :cond_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->makeSuggetionList(Ljava/util/List;[Ljava/lang/CharSequence;)V

    .line 880
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSuggestion:Ljava/util/List;

    .line 883
    .end local v0           #i:I
    .end local v3           #wordList:[Ljava/lang/CharSequence;
    :goto_2
    return-object v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public initASDB()S
    .locals 4

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    const/16 v2, 0x2800

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->ASDBInit([BS)S

    move-result v0

    .line 1421
    if-eqz v0, :cond_0

    .line 1422
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAWLinguistic.ASDBInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_0
    return v0
.end method

.method public initCDB()S
    .locals 4

    .prologue
    .line 1404
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCDBBuffer:[B

    const/16 v3, 0x800

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->CDBInit([BS)S

    move-result v0

    .line 1405
    .local v0, wStatus:S
    if-eqz v0, :cond_0

    .line 1406
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAWLinguistic.CDBInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :cond_0
    return v0
.end method

.method public initCore(S)V
    .locals 2
    .parameter "inputLanguageId"

    .prologue
    const/4 v1, 0x1

    .line 164
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 166
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->readDBdataFromFile(B)V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->readDBdataFromFile(B)V

    .line 170
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->readDBdataFromFile(B)V

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initLinguistic()V

    .line 172
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initKDB()V

    .line 174
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInitialized:Z

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initSubLinguistic()V

    goto :goto_0
.end method

.method public initKDB()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v9, "AxT9IME"

    .line 413
    const/4 v6, 0x0

    .line 415
    .local v6, wStatus:S
    const/4 v2, 0x0

    .line 416
    .local v2, wFirstKdbNum:S
    const/4 v3, 0x0

    .line 417
    .local v3, wFirstPageNum:S
    const/4 v4, 0x0

    .line 418
    .local v4, wSecondKdbNum:S
    const/4 v5, 0x0

    .line 420
    .local v5, wSecondPageNum:S
    new-array v0, v11, [S

    .line 421
    .local v0, pwFirstLdbNum:[S
    new-array v1, v11, [S

    .line 424
    .local v1, pwSecondLdbNum:[S
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbGetLanguage([S[S)S

    move-result v6

    .line 425
    if-eqz v6, :cond_0

    .line 426
    const-string v7, "AxT9IME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAWLinguistic.LdbGetLanguage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    if-nez v7, :cond_4

    .line 430
    aget-short v7, v0, v10

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, 0x600

    int-to-short v2, v7

    .line 437
    :goto_0
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v7, v2, v3, v4, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->Init(SSSS)S

    move-result v6

    .line 438
    if-eqz v6, :cond_1

    .line 439
    const-string v7, "AxT9IME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mKdbInput.init: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_1
    const/4 v6, 0x0

    .line 461
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v7, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->Validate(S)S

    move-result v6

    .line 462
    if-eqz v6, :cond_2

    .line 463
    const-string v7, "AxT9IME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mKdbInput.Validate:wFirstKdbNum: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_2
    const/4 v6, 0x0

    .line 483
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    iget-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRegionalCorrectionOn:Z

    invoke-virtual {v7, v8}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetRegionalCorrection(Z)S

    move-result v6

    .line 485
    if-eqz v6, :cond_3

    .line 486
    const-string v7, "AxT9IME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mKdbInput.SetRegionalCorrection:wStatus: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setXT9InputMode()V

    .line 490
    return-void

    .line 431
    :cond_4
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    if-ne v7, v11, :cond_5

    .line 432
    aget-short v7, v0, v10

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, 0x500

    int-to-short v2, v7

    goto :goto_0

    .line 434
    :cond_5
    aget-short v7, v0, v10

    and-int/lit16 v7, v7, 0xff

    or-int/lit16 v7, v7, 0x700

    int-to-short v2, v7

    goto/16 :goto_0
.end method

.method public initLanguage()V
    .locals 6

    .prologue
    .line 305
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mT9Language:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 306
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mT9Language:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    .line 308
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    if-nez v3, :cond_0

    .line 309
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    .line 312
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v1

    .line 314
    .local v1, langId:S
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v3, v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbValidate(S)S

    move-result v2

    .line 316
    .local v2, wStatus:S
    if-nez v2, :cond_1

    .line 318
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    .line 312
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    const-string v4, "AxT9IME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid Language = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    goto :goto_1

    .line 324
    .end local v1           #langId:S
    .end local v2           #wStatus:S
    :cond_2
    return-void
.end method

.method public initLinguistic()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "mAWLinguistic.LdbSetLanguage: "

    const-string v3, "AxT9IME"

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->Init()S

    move-result v0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.Init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KLinguistic;->Init()S

    move-result v0

    .line 242
    if-eqz v0, :cond_1

    .line 243
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mKOLinguistic.Init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbInit()S

    move-result v0

    .line 248
    if-eqz v0, :cond_2

    .line 249
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.LdbInit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-short v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbValidate(S)S

    move-result v0

    .line 253
    if-nez v0, :cond_7

    .line 254
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-short v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbSetLanguage(SS)S

    move-result v0

    .line 255
    if-eqz v0, :cond_3

    .line 256
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.LdbSetLanguage: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initLanguage()V

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initCDB()S

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initASDB()S

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    .line 271
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v5}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetUDBDelayedReorder(Z)S

    move-result v0

    .line 272
    if-eqz v0, :cond_4

    .line 273
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.SetUDBDelayedReorder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_4
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v6}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetWordStemsPoint(S)S

    move-result v0

    .line 276
    if-eqz v0, :cond_5

    .line 277
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.SetWordStemsPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCompletionOn:Z

    if-eqz v1, :cond_8

    .line 282
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetSpellCorrectionMode(B)S

    move-result v0

    .line 283
    if-eqz v0, :cond_6

    .line 284
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.SetSpellCorrectionModeOFF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_6
    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoSubstitution(Z)V

    .line 299
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoAppendOn:Z

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoAppend(Z)V

    .line 300
    return-void

    .line 260
    :cond_7
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbSetLanguage(SS)S

    move-result v0

    .line 261
    if-eqz v0, :cond_3

    .line 262
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.LdbSetLanguage: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 288
    :cond_8
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    if-nez v1, :cond_a

    .line 289
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v6}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetSpellCorrectionMode(B)S

    move-result v0

    .line 293
    :cond_9
    :goto_2
    if-eqz v0, :cond_6

    .line 294
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.SetSpellCorrectionModeON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    :cond_a
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    if-ne v1, v5, :cond_9

    .line 291
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, v5}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetSpellCorrectionMode(B)S

    move-result v0

    goto :goto_2
.end method

.method public initRUDB()S
    .locals 4

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    const/16 v3, 0x5000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->UDBInit([BS)S

    move-result v0

    .line 1413
    .local v0, wStatus:S
    if-eqz v0, :cond_0

    .line 1414
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAWLinguistic.RUDBInit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_0
    return v0
.end method

.method public invokeTimeOut()V
    .locals 4

    .prologue
    .line 518
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->TimeOut()S

    move-result v0

    .line 520
    .local v0, wStatus:S
    if-eqz v0, :cond_0

    .line 521
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeTimeOut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    return-void
.end method

.method public isAlphabetInputMode()Z
    .locals 2

    .prologue
    .line 1448
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1449
    const/4 v0, 0x0

    .line 1451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAmbiguousMode()Z
    .locals 2

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getKDBStateBits()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 540
    .local v0, result:Z
    :goto_0
    return v0

    .line 537
    .end local v0           #result:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isAutoSubstitutionEnabled()Z
    .locals 1

    .prologue
    .line 772
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    return v0
.end method

.method public isHangulInputMode()Z
    .locals 2

    .prologue
    .line 1444
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultitapMode()Z
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getKDBStateBits()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 533
    .local v0, result:Z
    :goto_0
    return v0

    .line 530
    .end local v0           #result:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isNonAlphabetLanguage()Z
    .locals 2

    .prologue
    .line 1456
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x61

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1462
    :cond_0
    const/4 v0, 0x1

    .line 1464
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noteWordDone(I)V
    .locals 7
    .parameter "index"

    .prologue
    const-string v6, "mAWLinguistic.NoteWordDone:wStatus= "

    const-string v5, "AxT9IME"

    .line 1207
    const/4 v1, 0x0

    .line 1208
    .local v1, wStatus:S
    new-instance v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;-><init>()V

    .line 1211
    .local v0, pCurrentActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    int-to-byte v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstGetWord(BLcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;)S

    move-result v1

    .line 1212
    if-eqz v1, :cond_0

    .line 1213
    const-string v2, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAWLinguistic.SelLstGetWord:wStatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-short v4, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->NoteWordDone([SS)S

    move-result v1

    .line 1217
    if-eqz v1, :cond_1

    .line 1218
    const-string v2, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAWLinguistic.NoteWordDone:wStatus= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    move-result v1

    .line 1220
    if-eqz v1, :cond_2

    .line 1221
    const-string v2, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRUDB= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_1
    :goto_0
    return-void

    .line 1223
    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-object v3, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-short v4, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->NoteWordDone([SS)S

    move-result v1

    .line 1224
    if-eqz v1, :cond_1

    .line 1225
    const-string v2, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAWLinguistic.NoteWordDone:wStatus= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public noteWordDoneByActiveWord()V
    .locals 6

    .prologue
    const-string v5, "mAWLinguistic.NoteWordDone:wStatus= "

    const-string v4, "AxT9IME"

    .line 1232
    const/4 v0, 0x0

    .line 1234
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->NoteWordDone([SS)S

    move-result v0

    .line 1235
    if-eqz v0, :cond_0

    .line 1236
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.NoteWordDone:wStatus= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    move-result v0

    .line 1238
    if-eqz v0, :cond_1

    .line 1239
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRUDB= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_0
    :goto_0
    return-void

    .line 1241
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->sWord:[S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mActiveWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;

    iget-short v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9AWWordInfo;->wWordLen:S

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->NoteWordDone([SS)S

    move-result v0

    .line 1242
    if-eqz v0, :cond_0

    .line 1243
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAWLinguistic.NoteWordDone:wStatus= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processKey(S)S
    .locals 6
    .parameter "wKeyIndex"

    .prologue
    .line 1185
    const/4 v3, 0x1

    new-array v0, v3, [S

    .line 1186
    .local v0, sFunctionKey:[S
    const/4 v2, 0x0

    .line 1187
    .local v2, wStatus:S
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->lookupChar(S)S

    move-result v1

    .line 1191
    .local v1, wKeytoMapVal:S
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->ProcessKey(SB[S)S

    move-result v2

    .line 1192
    if-eqz v2, :cond_0

    .line 1193
    const-string v3, "AxT9IME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKdbInput.ProcessKey wStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_0
    return v2
.end method

.method public readDBdataFromFile(B)V
    .locals 13
    .parameter "dbType"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1331
    const-string v4, ""

    .line 1334
    .local v4, fileName:Ljava/lang/String;
    if-nez p1, :cond_4

    .line 1335
    const-string v4, "xT9UdbData.dat"

    .line 1342
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mContext:Landroid/content/Context;

    const-string v9, "xT9DB"

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1343
    .local v0, dir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1345
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1346
    const/4 v5, 0x0

    .line 1347
    .local v5, is:Ljava/io/FileInputStream;
    const/4 v7, -0x1

    .line 1349
    .local v7, returnOfRead:I
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1350
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    if-nez p1, :cond_6

    .line 1351
    :try_start_1
    sget-object v8, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v7

    .line 1366
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v5, v6

    .line 1379
    .end local v6           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_3
    :goto_2
    return-void

    .line 1336
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    :cond_4
    if-ne p1, v11, :cond_5

    .line 1337
    const-string v4, "xT9CdbData.dat"

    goto :goto_0

    .line 1338
    :cond_5
    if-ne p1, v12, :cond_0

    .line 1339
    const-string v4, "xT9ASdbData.dat"

    goto :goto_0

    .line 1353
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :cond_6
    if-ne p1, v11, :cond_7

    .line 1354
    :try_start_3
    sget-object v8, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCDBBuffer:[B

    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    goto :goto_1

    .line 1356
    :cond_7
    if-ne p1, v12, :cond_1

    .line 1357
    sget-object v8, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    invoke-virtual {v6, v8}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result v7

    goto :goto_1

    .line 1367
    :catch_0
    move-exception v1

    .line 1368
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 1370
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_2

    .line 1360
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 1361
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File was removed durning test"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1366
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1367
    :catch_2
    move-exception v1

    .line 1368
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1362
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v1, v8

    .line 1363
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1366
    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 1367
    :catch_4
    move-exception v1

    .line 1368
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1365
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1366
    :goto_5
    if-eqz v5, :cond_8

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1369
    :cond_8
    :goto_6
    throw v8

    .line 1367
    :catch_5
    move-exception v1

    .line 1368
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 1373
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/FileInputStream;
    .end local v7           #returnOfRead:I
    :cond_9
    :try_start_9
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 1374
    :catch_6
    move-exception v2

    .line 1375
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1365
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v6       #is:Ljava/io/FileInputStream;
    .restart local v7       #returnOfRead:I
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1362
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_7
    move-exception v8

    move-object v1, v8

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1360
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v1, v8

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public selectWord(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 1199
    const/4 v0, 0x0

    .line 1200
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstSelWord(B)S

    .line 1201
    if-eqz v0, :cond_0

    .line 1202
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectWord status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_0
    return-void
.end method

.method public setAutoAppend(Z)V
    .locals 4
    .parameter "set"

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, wStatus:S
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoAppendOn:Z

    .line 710
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoAppendOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetAutoAppendInList(Z)S

    move-result v0

    .line 712
    if-eqz v0, :cond_0

    .line 713
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AxT9CoreService.setAutoAppend:wStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    return-void
.end method

.method public setAutoAppendEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoAppendOn:Z

    .line 797
    return-void
.end method

.method public setAutoSubstitution(Z)V
    .locals 5
    .parameter "set"

    .prologue
    const-string v4, "AxT9CoreService.SetUserDefinedAutoSubstitution:wStatus: "

    const-string v3, "AxT9IME"

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, wStatus:S
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    .line 720
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetLDBAutoSubstitution(Z)S

    move-result v0

    .line 721
    if-eqz v0, :cond_0

    .line 722
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AxT9CoreService.SetLDBAutoSubstitution:wStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetUserDefinedAutoSubstitution(Z)S

    move-result v0

    .line 726
    if-eqz v0, :cond_1

    .line 727
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AxT9CoreService.SetUserDefinedAutoSubstitution:wStatus: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initASDB()S

    move-result v0

    .line 729
    if-eqz v0, :cond_2

    .line 730
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AxT9CoreService.initASDB:wStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_1
    :goto_0
    return-void

    .line 732
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetUserDefinedAutoSubstitution(Z)S

    move-result v0

    .line 733
    if-eqz v0, :cond_1

    .line 734
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AxT9CoreService.SetUserDefinedAutoSubstitution:wStatus: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAutoSubstitutionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 800
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mAutoSubstitutionOn:Z

    .line 801
    return-void
.end method

.method public setCorrection(B)V
    .locals 4
    .parameter "eSpellMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 661
    const/4 v0, 0x0

    .line 663
    .local v0, wStatus:S
    if-nez p1, :cond_1

    .line 664
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCorrectionOn:Z

    .line 665
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRegionalCorrectionOn:Z

    .line 674
    :goto_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, p1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetSpellCorrectionMode(B)S

    move-result v0

    .line 676
    if-eqz v0, :cond_0

    .line 677
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AxT9CoreService.setCorrection:wStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    return-void

    .line 666
    :cond_1
    if-ne p1, v2, :cond_2

    .line 667
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCorrectionOn:Z

    .line 668
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRegionalCorrectionOn:Z

    goto :goto_0

    .line 670
    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCorrectionOn:Z

    .line 671
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRegionalCorrectionOn:Z

    goto :goto_0
.end method

.method public setCorrectionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCorrectionOn:Z

    .line 793
    return-void
.end method

.method public setInputLanguage(II)S
    .locals 8
    .parameter "validLangIndex"
    .parameter "editorType"

    .prologue
    const/16 v6, 0x12

    .line 337
    const/4 v3, 0x0

    .line 338
    .local v3, numberOfValidLang:B
    const/4 v1, 0x0

    .line 342
    .local v1, indexOfValidLang:B
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v5

    if-ne v5, v6, :cond_0

    .line 343
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 344
    iput-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 345
    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    .line 347
    iget-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 371
    :goto_0
    return v5

    .line 350
    :cond_0
    const/4 v0, 0x0

    .local v0, i:B
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-byte v2, v5

    .local v2, n:B
    :goto_1
    if-ge v0, v2, :cond_1

    .line 351
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_2

    .line 352
    if-ne v3, p1, :cond_2

    .line 353
    move v1, v0

    .line 360
    :cond_1
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v5

    iput-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 361
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v5, v5, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbSetLanguage(SS)S

    move-result v4

    .line 362
    .local v4, wStatus:S
    if-eqz v4, :cond_3

    .line 363
    const-string v6, "AxT9IME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAWLinguistic.LdbSetLanguage: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Error!!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_2
    iget-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    goto :goto_0

    .line 357
    .end local v4           #wStatus:S
    :cond_2
    add-int/lit8 v5, v3, 0x1

    int-to-byte v3, v5

    .line 350
    add-int/lit8 v5, v0, 0x1

    int-to-byte v0, v5

    goto :goto_1

    .line 368
    .restart local v4       #wStatus:S
    :cond_3
    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    goto :goto_2
.end method

.method public setInputLanguageWithID(SI)V
    .locals 6
    .parameter "languageID"
    .parameter "editorType"

    .prologue
    const-string v5, "AxT9IME"

    .line 377
    const/4 v0, 0x0

    .local v0, i:B
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-byte v1, v3

    .local v1, n:B
    :goto_0
    if-ge v0, v1, :cond_0

    .line 378
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    if-ne v3, p1, :cond_4

    .line 379
    const/16 v3, 0x12

    if-ne p1, v3, :cond_1

    .line 380
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    .line 381
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    invoke-virtual {p0, v3, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    .line 402
    .end local p0
    :cond_0
    :goto_1
    return-void

    .line 384
    .restart local p0
    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mValidLangList:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_3

    .line 385
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->LdbSetLanguage(SS)S

    move-result v2

    .line 386
    .local v2, wStatus:S
    if-eqz v2, :cond_2

    .line 387
    const-string v3, "AxT9IME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAWLinguistic.LdbSetLanguage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Error!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 392
    .restart local p0
    :cond_2
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputType:I

    invoke-virtual {p0, v3, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    .line 393
    iput-short p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputLanguageId:S

    goto :goto_1

    .line 397
    .end local v2           #wStatus:S
    :cond_3
    const-string v3, "AxT9IME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInputLanguageWithID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mLanguageInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is Invalid language (error!!) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 377
    .restart local p0
    :cond_4
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto/16 :goto_0
.end method

.method public setInputMode(I)V
    .locals 1
    .parameter "inputMode"

    .prologue
    .line 1270
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    .line 1271
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    if-eq v0, p1, :cond_0

    .line 1272
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mInputKeyMode:I

    .line 1274
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setXT9InputMode()V

    .line 1276
    :cond_1
    return-void
.end method

.method public setNextWordPrediction(Z)V
    .locals 4
    .parameter "set"

    .prologue
    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, wStatus:S
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mPredictionOn:Z

    .line 653
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mPredictionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetDBPrediction(Z)S

    move-result v0

    .line 655
    if-eqz v0, :cond_0

    .line 656
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AxT9CoreService.setNextWordPrediction:wStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    return-void
.end method

.method public setNextWordPredictionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 788
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mPredictionOn:Z

    .line 789
    return-void
.end method

.method public setRecapture(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRecaptureOn:Z

    .line 753
    return-void
.end method

.method public setRecaptureEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 808
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRecaptureOn:Z

    .line 809
    return-void
.end method

.method public setRegionalCorrectionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mRegionalCorrectionOn:Z

    .line 805
    return-void
.end method

.method public setShiftMode(B)V
    .locals 4
    .parameter "bShiftState"

    .prologue
    .line 1394
    const/4 v0, 0x0

    .line 1396
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mKdbInput:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;

    invoke-virtual {v1, p1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$KdbInput;->SetShiftState(B)S

    move-result v0

    .line 1397
    if-eqz v0, :cond_0

    .line 1398
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCore.mKdbInput.SetShiftState:wStatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :cond_0
    return-void
.end method

.method public setWordCompletion(Z)V
    .locals 4
    .parameter "set"

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, wStatus:S
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCompletionOn:Z

    .line 634
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCompletionOn:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetDBCompletion(Z)S

    move-result v0

    .line 636
    if-eqz v0, :cond_0

    .line 637
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AxT9CoreService.setWordCompletion:wStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    return-void
.end method

.method public setWordCompletionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 784
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCompletionOn:Z

    .line 785
    return-void
.end method

.method public setWordCompletionPoint(S)V
    .locals 4
    .parameter "point"

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, wStatus:S
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v1, p1}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SetWordCompletionPoint(S)S

    move-result v0

    .line 645
    if-eqz v0, :cond_0

    .line 646
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AxT9CoreService.setWordCompletionPoint:wStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    return-void
.end method

.method public updateSelectList()B
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 812
    const/4 v2, 0x0

    .line 813
    .local v2, wStatus:S
    new-array v1, v3, [B

    .line 814
    .local v1, bTotalWords:[B
    new-array v0, v3, [B

    .line 816
    .local v0, bDefaultListIndex:[B
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v3, v1, v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstBuild([B[B)S

    move-result v2

    .line 817
    if-eqz v2, :cond_0

    .line 818
    const-string v3, "AxT9IME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAWLinguistic.SelLstBuild:wStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iput-byte v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    .line 820
    iput-byte v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    .line 828
    :goto_0
    iget-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    return v3

    .line 824
    :cond_0
    aget-byte v3, v1, v6

    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    .line 825
    aget-byte v3, v0, v6

    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    goto :goto_0
.end method

.method public updateSelectListPostShift(B)B
    .locals 7
    .parameter "eMode"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 836
    const/4 p1, 0x3

    .line 837
    const/4 v2, 0x0

    .line 838
    .local v2, wStatus:S
    new-array v1, v3, [B

    .line 839
    .local v1, bTotalWords:[B
    new-array v0, v3, [B

    .line 841
    .local v0, bDefaultListIndex:[B
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCore:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core;->mAWLinguistic:Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;

    invoke-virtual {v3, p1, v1, v0}, Lcom/sec/android/inputmethod/axt9/xt9/AxT9Core$AWLinguistic;->SelLstPostShift(B[B[B)S

    move-result v2

    .line 842
    if-eqz v2, :cond_0

    .line 843
    const-string v3, "AxT9IME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAWLinguistic.SelLstPostShift:wStatus= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iput-byte v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    .line 845
    iput-byte v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mDefaultActiveWordIndex:B

    .line 853
    :goto_0
    iget-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    return v3

    .line 849
    :cond_0
    aget-byte v3, v1, v6

    iput-byte v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mSelTotalWords:B

    goto :goto_0
.end method

.method public writeDBdataToFile(B)V
    .locals 12
    .parameter "dbType"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1280
    const-string v4, ""

    .line 1283
    .local v4, fileName:Ljava/lang/String;
    if-nez p1, :cond_4

    .line 1284
    const-string v4, "xT9UdbData.dat"

    .line 1291
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mContext:Landroid/content/Context;

    const-string v8, "xT9DB"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 1292
    .local v0, dir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1293
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1295
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1301
    const/4 v5, 0x0

    .line 1303
    .local v5, os:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 1304
    .end local v5           #os:Ljava/io/FileOutputStream;
    .local v6, os:Ljava/io/FileOutputStream;
    if-nez p1, :cond_6

    .line 1305
    :try_start_2
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mUDBBuffer:[B

    const/4 v8, 0x0

    const/16 v9, 0x5000

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1316
    :cond_2
    :goto_2
    if-eqz v6, :cond_9

    .line 1318
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v5, v6

    .line 1327
    .end local v6           #os:Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    return-void

    .line 1285
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    :cond_4
    if-ne p1, v10, :cond_5

    .line 1286
    const-string v4, "xT9CdbData.dat"

    goto :goto_0

    .line 1287
    :cond_5
    if-ne p1, v11, :cond_0

    .line 1288
    const-string v4, "xT9ASdbData.dat"

    goto :goto_0

    .line 1296
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1297
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1306
    .end local v2           #e1:Ljava/io/IOException;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_6
    if-ne p1, v10, :cond_7

    .line 1307
    :try_start_4
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mCDBBuffer:[B

    const/4 v8, 0x0

    const/16 v9, 0x800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 1311
    :catch_1
    move-exception v7

    move-object v1, v7

    move-object v5, v6

    .line 1312
    .end local v6           #os:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1316
    if-eqz v5, :cond_3

    .line 1318
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 1319
    :catch_2
    move-exception v1

    .line 1320
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1308
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_7
    if-ne p1, v11, :cond_2

    .line 1309
    :try_start_7
    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->mASDBBuffer:[B

    const/4 v8, 0x0

    const/16 v9, 0x2800

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 1313
    :catch_3
    move-exception v7

    move-object v1, v7

    move-object v5, v6

    .line 1314
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1316
    if-eqz v5, :cond_3

    .line 1318
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 1319
    :catch_4
    move-exception v1

    .line 1320
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1319
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .line 1320
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 1321
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1316
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v5, :cond_8

    .line 1318
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 1321
    :cond_8
    :goto_7
    throw v7

    .line 1319
    :catch_6
    move-exception v1

    .line 1320
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1316
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 1313
    :catch_7
    move-exception v7

    move-object v1, v7

    goto :goto_5

    .line 1311
    :catch_8
    move-exception v7

    move-object v1, v7

    goto :goto_4

    .end local v5           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_9
    move-object v5, v6

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #os:Ljava/io/FileOutputStream;
    goto :goto_3
.end method
