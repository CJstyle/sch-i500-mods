.class public Lcom/diotek/dhwr/eur/b2b/DioHWRService;
.super Ljava/lang/Object;
.source "DioHWRService.java"


# instance fields
.field private final MAX_CANDIDATES_BOXMODE:I

.field mCands:[I

.field mCharBuffer:[C

.field private mEnableSymbols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mErrorCode:I

.field private mHWRAutoSpaceAdded:Z

.field private mHWRAutoSpaceInset:Z

.field private mHWRCandidateShown:Z

.field private mHWRHangulJohapUse:Z

.field private mHWRInputMode:I

.field mIMEService:Landroid/content/Context;

.field private mInputLanguage:S

.field mInputMode:[[I

.field private mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

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

.field mModeCount:I

.field mResult:[C

.field private final mSizeRate:I

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSymbols:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRCandidateShown:Z

    .line 30
    iput-boolean v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRHangulJohapUse:Z

    .line 31
    iput-boolean v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceInset:Z

    .line 32
    iput-boolean v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceAdded:Z

    .line 34
    const/16 v0, 0xd2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    .line 35
    const/16 v0, 0xd2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    .line 36
    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    .line 37
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    .line 38
    iput v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    .line 39
    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 45
    const/16 v0, 0x2d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "."

    aput-object v1, v0, v3

    const-string v1, ","

    aput-object v1, v0, v2

    const-string v1, "-"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "~"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "+"

    aput-object v2, v0, v1

    const-string v1, "/"

    aput-object v1, v0, v5

    const-string v1, "&"

    aput-object v1, v0, v6

    const/16 v1, 0xb

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u20ac"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u00a3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u00a7"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\uffe6"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u00bf"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\u00a1"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\u00a4"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\u00a2"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\u00ab"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\u00bb"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\u00ae"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\u00a9"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\u00b0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSymbols:[Ljava/lang/String;

    .line 55
    iput v6, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->MAX_CANDIDATES_BOXMODE:I

    .line 57
    const/16 v0, 0x3c

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSizeRate:I

    .line 58
    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRInputMode:I

    .line 63
    iput-short v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputLanguage:S

    .line 66
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->init()V

    .line 67
    return-void
.end method

.method private handleAutoSpaceInset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 873
    iget-boolean v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceInset:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v1

    aget v1, v0, v3

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_AUTO_SPACE:I

    or-int/2addr v1, v2

    aput v1, v0, v3

    .line 878
    :goto_0
    return-void

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v1

    aget v1, v0, v3

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_AUTO_SPACE:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aput v1, v0, v3

    goto :goto_0
.end method

.method private handleGestureShift()V
    .locals 1

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isAlphabetMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    :cond_0
    return-void
.end method

.method private handleHangulRecogMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 863
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 864
    iget-boolean v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRHangulJohapUse:Z

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v2

    aget v1, v0, v3

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_JOHAP:I

    or-int/2addr v1, v2

    aput v1, v0, v3

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v2

    aget v1, v0, v3

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_JOHAP:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aput v1, v0, v3

    goto :goto_0
.end method

.method private handleHwrSettingValue()V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->handleHangulRecogMode()V

    .line 859
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->handleAutoSpaceInset()V

    .line 860
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->create()V

    .line 73
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setWritingArea(Landroid/graphics/Rect;)V

    .line 74
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    .line 76
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->initLanguage()V

    .line 77
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setSettingValues()V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSymbols:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSymbols:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method

.method private isAlphabetMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 817
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v3

    aget v0, v1, v4

    .line 818
    .local v0, type:I
    sget v1, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UPPERCASE:I

    and-int/2addr v1, v0

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UPPERCASE:I

    if-eq v1, v2, :cond_0

    sget v1, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_LOWERCASE:I

    and-int/2addr v1, v0

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_LOWERCASE:I

    if-ne v1, v2, :cond_1

    :cond_0
    move v1, v4

    .line 822
    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private isRecognizeSymbolMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 813
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    const/16 v1, 0x84

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isRecognizeTextMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 803
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v2

    aget v0, v1, v2

    .line 804
    .local v0, mode:I
    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    :cond_0
    move v1, v2

    .line 809
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onPostProcessor(C)C
    .locals 3
    .parameter "cResult"

    .prologue
    .line 569
    move v0, p1

    .line 570
    .local v0, ret:C
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeTextMode()Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 576
    .end local v0           #ret:C
    .local v1, ret:C
    :goto_0
    return v1

    .line 573
    .end local v1           #ret:C
    .restart local v0       #ret:C
    :cond_0
    const/16 v2, 0x20a9

    if-ne v0, v2, :cond_1

    .line 574
    const v0, 0xffe6

    :cond_1
    move v1, v0

    .line 576
    .end local v0           #ret:C
    .restart local v1       #ret:C
    goto :goto_0
.end method

.method private recognizeGesture()Z
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 141
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 142
    iput v6, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    .line 143
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aput v8, v3, v5

    .line 144
    filled-new-array {v7, v7}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 145
    .local v1, inputMode:[[I
    aget-object v3, v1, v5

    const/16 v4, 0x7f

    aput v4, v3, v5

    .line 146
    aget-object v3, v1, v5

    sget v4, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v4, v3, v6

    .line 148
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v5, v1, v3, v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 149
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_0

    .line 153
    :cond_0
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v3}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 154
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    .line 155
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_1

    move v2, v5

    .line 187
    :goto_0
    return v2

    .line 160
    :cond_1
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aget v3, v3, v5

    if-lez v3, :cond_2

    .line 163
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v3, v3, v5

    sparse-switch v3, :sswitch_data_0

    move v2, v5

    .line 182
    goto :goto_0

    .line 165
    :sswitch_0
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v4, -0x5

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 184
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    move v2, v6

    .line 185
    goto :goto_0

    .line 169
    :sswitch_1
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3, v8, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_1

    .line 172
    :sswitch_2
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->handleGestureShift()V

    goto :goto_1

    .line 175
    :sswitch_3
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v4, 0x20

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_1

    .line 178
    :sswitch_4
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 187
    goto :goto_0

    .line 163
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
        0x9 -> :sswitch_4
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method private setSettingValues()V
    .locals 0

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->handleHwrSettingValue()V

    .line 855
    return-void
.end method


# virtual methods
.method public addPoint(SS)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 587
    invoke-static {p1, p2}, Lcom/diotek/dhwr/eur/b2b/DHWR;->AddPoint(SS)I

    move-result v0

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 588
    iget v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DioHWRService.endStroke.Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v0, 0x0

    .line 592
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearInk()V
    .locals 0

    .prologue
    .line 772
    invoke-static {}, Lcom/diotek/dhwr/eur/b2b/DHWR;->InkClear()I

    .line 773
    return-void
.end method

.method public create()V
    .locals 3

    .prologue
    .line 580
    invoke-static {}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Create()I

    move-result v0

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 581
    iget v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DioHWRService.create.Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    return-void
.end method

.method public endStroke()V
    .locals 3

    .prologue
    .line 596
    invoke-static {}, Lcom/diotek/dhwr/eur/b2b/DHWR;->EndStroke()I

    move-result v0

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 597
    iget v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v0, :cond_0

    .line 598
    const-string v0, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DioHWRService.endStroke.Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    return-void
.end method

.method public getInkCounter()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 603
    const/4 v1, 0x1

    new-array v0, v1, [I

    aput v4, v0, v4

    .line 604
    .local v0, count:[I
    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->GetInkCount([I)I

    move-result v1

    iput v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 605
    iget v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v1, :cond_0

    .line 606
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DioHWRDervice.getInkCounter.Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_0
    aget v1, v0, v4

    return v1
.end method

.method public initLanguage()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 90
    iget-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mLanguageInfoList:Ljava/util/List;

    .line 91
    return-void
.end method

.method public makeSentenceSuggestion(Ljava/util/List;[CI)V
    .locals 3
    .parameter
    .parameter "result"
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;[CI)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 296
    if-lez p3, :cond_0

    .line 297
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 298
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 299
    aget-char v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public makeSuggestion(Ljava/util/List;[CI)V
    .locals 2
    .parameter
    .parameter "result"
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;[CI)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 566
    :cond_0
    return-void

    .line 559
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 561
    if-eqz p3, :cond_0

    .line 562
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 563
    aget-char v1, p2, v0

    invoke-direct {p0, v1}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->onPostProcessor(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public recognize()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 481
    const/4 v2, 0x0

    .line 483
    .local v2, result:I
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeGestureForSymbolMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    .line 553
    .end local p0
    :goto_0
    return v3

    .line 486
    .restart local p0
    :cond_0
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeGesture()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v6

    goto :goto_0

    .line 489
    :cond_1
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    const/16 v4, 0xa

    aput v4, v3, v6

    .line 491
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v6, v3, v4, v5}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 492
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_2

    .line 496
    :cond_2
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v3, v8}, Ljava/util/Arrays;->fill([CC)V

    .line 497
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v3}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 498
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_3

    .line 499
    const-string v3, "AxT9IME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DioHWRService.recognize.Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    .line 511
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v3, v3, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v3, v3, v7

    if-nez v3, :cond_4

    move v3, v6

    goto :goto_0

    .line 513
    :cond_4
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 515
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aget v3, v3, v6

    if-lez v3, :cond_7

    .line 520
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    array-length v3, v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v3, v3, v0

    if-eqz v3, :cond_6

    .line 521
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 522
    add-int/lit8 v1, v1, -0x1

    .line 520
    :goto_2
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 525
    :cond_5
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v0

    aput-char v4, v3, v1

    goto :goto_2

    .line 527
    :cond_6
    move v2, v1

    .line 537
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_7
    if-lez v2, :cond_9

    .line 538
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-virtual {p0, v3, v4, v2}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->makeSuggestion(Ljava/util/List;[CI)V

    .line 539
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 540
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-virtual {v3, v4, v7, v7, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 542
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 543
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 544
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCurrentComposing(Ljava/lang/StringBuilder;)V

    .line 545
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setComposingText(Ljava/lang/CharSequence;)Z

    .line 548
    :cond_8
    iget-boolean v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceAdded:Z

    if-eqz v3, :cond_9

    .line 549
    iget-object p0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v3, 0x0

    invoke-virtual {p0, v8, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    :cond_9
    move v3, v2

    .line 553
    goto/16 :goto_0
.end method

.method public recognizeBackSpace()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 238
    iput v6, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    .line 239
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    const/16 v4, 0xa

    aput v4, v3, v5

    .line 240
    filled-new-array {v7, v7}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 241
    .local v1, inputMode:[[I
    aget-object v3, v1, v5

    const/16 v4, 0x7f

    aput v4, v3, v5

    .line 242
    aget-object v3, v1, v5

    sget v4, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v4, v3, v6

    .line 244
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v5, v1, v3, v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 245
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_0

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v3}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 250
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    .line 251
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_1

    move v2, v5

    .line 269
    :goto_0
    return v2

    .line 256
    :cond_1
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aget v3, v3, v5

    if-lez v3, :cond_2

    .line 259
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v3, v3, v5

    packed-switch v3, :pswitch_data_0

    move v2, v5

    .line 264
    goto :goto_0

    .line 261
    :pswitch_0
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v4, -0x5

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 266
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    move v2, v6

    .line 267
    goto :goto_0

    :cond_2
    move v2, v5

    .line 269
    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public recognizeBoxMode()I
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognize()I

    move-result v0

    return v0
.end method

.method public recognizeGestureForSymbolMode()Z
    .locals 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 193
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 194
    iput v6, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    .line 195
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aput v8, v3, v5

    .line 196
    filled-new-array {v7, v7}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 197
    .local v1, inputMode:[[I
    aget-object v3, v1, v5

    const/16 v4, 0x7f

    aput v4, v3, v5

    .line 198
    aget-object v3, v1, v5

    sget v4, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v4, v3, v6

    .line 200
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v5, v1, v3, v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 201
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_0

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v3}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v3

    iput v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 206
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    .line 207
    iget v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v3, :cond_1

    move v2, v5

    .line 231
    :goto_0
    return v2

    .line 212
    :cond_1
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aget v3, v3, v5

    if-lez v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v3, v3, v5

    sparse-switch v3, :sswitch_data_0

    move v2, v5

    .line 226
    goto :goto_0

    .line 217
    :sswitch_0
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v4, -0x5

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 228
    :goto_1
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    move v2, v6

    .line 229
    goto :goto_0

    .line 220
    :sswitch_1
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/16 v4, 0x20

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_1

    .line 223
    :sswitch_2
    iget-object v3, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3, v8, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 231
    goto :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xd -> :sswitch_2
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public recognizeSentence()I
    .locals 10

    .prologue
    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 307
    const/4 v3, 0x0

    .line 308
    .local v3, result:I
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    const/16 v5, 0xa

    aput v5, v4, v7

    .line 309
    const/4 v1, 0x1

    .line 311
    .local v1, isRecognizedSentence:Z
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeGestureForSymbolMode()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    .line 400
    .end local p0
    :goto_0
    return v4

    .line 314
    .restart local p0
    :cond_0
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->recognizeGesture()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_0

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    iget v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mModeCount:I

    iget-object v6, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v8, v4, v5, v6}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 318
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_2

    .line 322
    :cond_2
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([CC)V

    .line 323
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    invoke-static {v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->Recognize([C)I

    move-result v4

    iput v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 324
    iget v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v4, :cond_3

    .line 325
    const-string v4, "AxT9IME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DioHWRService.recognize.Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    int-to-short v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->clearInk()V

    .line 337
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([CC)V

    .line 338
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v7

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v8

    if-nez v4, :cond_4

    move v4, v7

    goto :goto_0

    .line 340
    :cond_4
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v8

    if-nez v4, :cond_9

    .line 345
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    array-length v4, v4

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v0

    if-eqz v4, :cond_6

    .line 346
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 347
    add-int/lit8 v2, v2, -0x1

    .line 345
    :goto_2
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 350
    :cond_5
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v5, v5, v0

    aput-char v5, v4, v2

    goto :goto_2

    .line 352
    :cond_6
    move v3, v2

    .line 353
    const/4 v1, 0x0

    .line 376
    :goto_3
    if-lez v3, :cond_8

    .line 377
    if-eqz v1, :cond_c

    .line 378
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-virtual {p0, v4, v5, v3}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->makeSentenceSuggestion(Ljava/util/List;[CI)V

    .line 379
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 385
    :goto_4
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 386
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 387
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCurrentComposing(Ljava/lang/StringBuilder;)V

    .line 388
    if-eqz v1, :cond_d

    .line 389
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitCurrentComposing()V

    .line 395
    :cond_7
    :goto_5
    iget-boolean v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRAutoSpaceAdded:Z

    if-eqz v4, :cond_8

    .line 396
    iget-object p0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v4, 0x0

    invoke-virtual {p0, v9, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    :cond_8
    move v4, v3

    .line 400
    goto/16 :goto_0

    .line 359
    .end local v0           #i:I
    .end local v2           #j:I
    .restart local p0
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #i:I
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_6
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    array-length v4, v4

    if-ge v0, v4, :cond_b

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v4, v4, v0

    if-eqz v4, :cond_b

    .line 360
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->isRecognizeSymbolMode()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mEnableSymbols:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 361
    add-int/lit8 v2, v2, -0x1

    .line 359
    :goto_7
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 364
    :cond_a
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mResult:[C

    aget-char v5, v5, v0

    aput-char v5, v4, v2

    goto :goto_7

    .line 366
    :cond_b
    move v3, v2

    goto/16 :goto_3

    .line 381
    :cond_c
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCharBuffer:[C

    invoke-virtual {p0, v4, v5, v3}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->makeSuggestion(Ljava/util/List;[CI)V

    .line 382
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 383
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-virtual {v4, v5, v8, v8, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    goto/16 :goto_4

    .line 391
    :cond_d
    iget-object v4, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v5, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mSuggestions:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setComposingText(Ljava/lang/CharSequence;)Z

    goto :goto_5
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mIMEService:Landroid/content/Context;

    .line 95
    return-void
.end method

.method public setHwrInputMode(IS)V
    .locals 7
    .parameter "inputMode"
    .parameter "inputLanguage"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 628
    const/4 v0, 0x1

    .line 629
    .local v0, mModeCount:I
    packed-switch p1, :pswitch_data_0

    .line 744
    :pswitch_0
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    aput v4, v1, v4

    .line 748
    :goto_0
    :pswitch_1
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    aget v1, v1, v4

    iput v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mHWRInputMode:I

    .line 749
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    aput v6, v1, v4

    .line 750
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    iget-object v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mCands:[I

    invoke-static {v4, v1, v0, v2}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetAttribute(I[[II[I)I

    move-result v1

    iput v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 751
    iget v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v1, :cond_0

    .line 755
    :cond_0
    invoke-direct {p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setSettingValues()V

    .line 756
    return-void

    .line 631
    :pswitch_2
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x82

    aput v2, v1, v4

    .line 632
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v2, v1, v5

    goto :goto_0

    .line 635
    :pswitch_3
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x84

    aput v2, v1, v4

    .line 636
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    aput v2, v1, v5

    goto :goto_0

    .line 640
    :pswitch_4
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UPPERCASE:I

    sget v3, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_LOWERCASE:I

    or-int/2addr v2, v3

    aput v2, v1, v5

    .line 641
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 643
    :sswitch_0
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x21

    aput v2, v1, v4

    goto :goto_0

    .line 646
    :sswitch_1
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/4 v2, 0x5

    aput v2, v1, v4

    goto :goto_0

    .line 649
    :sswitch_2
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/4 v2, 0x6

    aput v2, v1, v4

    goto :goto_0

    .line 652
    :sswitch_3
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/4 v2, 0x7

    aput v2, v1, v4

    goto :goto_0

    .line 655
    :sswitch_4
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x8

    aput v2, v1, v4

    goto :goto_0

    .line 658
    :sswitch_5
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x9

    aput v2, v1, v4

    goto/16 :goto_0

    .line 661
    :sswitch_6
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    aput v4, v1, v4

    goto/16 :goto_0

    .line 664
    :sswitch_7
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    aput v6, v1, v4

    goto/16 :goto_0

    .line 667
    :sswitch_8
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xb

    aput v2, v1, v4

    goto/16 :goto_0

    .line 670
    :sswitch_9
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/4 v2, 0x2

    aput v2, v1, v4

    goto/16 :goto_0

    .line 673
    :sswitch_a
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x22

    aput v2, v1, v4

    goto/16 :goto_0

    .line 676
    :sswitch_b
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xe

    aput v2, v1, v4

    goto/16 :goto_0

    .line 679
    :sswitch_c
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xf

    aput v2, v1, v4

    goto/16 :goto_0

    .line 682
    :sswitch_d
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xc

    aput v2, v1, v4

    goto/16 :goto_0

    .line 685
    :sswitch_e
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x10

    aput v2, v1, v4

    goto/16 :goto_0

    .line 688
    :sswitch_f
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x23

    aput v2, v1, v4

    goto/16 :goto_0

    .line 691
    :sswitch_10
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x65

    aput v2, v1, v4

    .line 692
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    sget v2, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_WANSUNG:I

    aput v2, v1, v5

    goto/16 :goto_0

    .line 695
    :sswitch_11
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x11

    aput v2, v1, v4

    goto/16 :goto_0

    .line 698
    :sswitch_12
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x12

    aput v2, v1, v4

    goto/16 :goto_0

    .line 701
    :sswitch_13
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x24

    aput v2, v1, v4

    goto/16 :goto_0

    .line 704
    :sswitch_14
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x13

    aput v2, v1, v4

    goto/16 :goto_0

    .line 707
    :sswitch_15
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x14

    aput v2, v1, v4

    goto/16 :goto_0

    .line 710
    :sswitch_16
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x15

    aput v2, v1, v4

    goto/16 :goto_0

    .line 713
    :sswitch_17
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x17

    aput v2, v1, v4

    goto/16 :goto_0

    .line 716
    :sswitch_18
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x26

    aput v2, v1, v4

    goto/16 :goto_0

    .line 719
    :sswitch_19
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x18

    aput v2, v1, v4

    goto/16 :goto_0

    .line 722
    :sswitch_1a
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x19

    aput v2, v1, v4

    goto/16 :goto_0

    .line 725
    :sswitch_1b
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x1a

    aput v2, v1, v4

    goto/16 :goto_0

    .line 728
    :sswitch_1c
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0xd

    aput v2, v1, v4

    goto/16 :goto_0

    .line 731
    :sswitch_1d
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x1b

    aput v2, v1, v4

    goto/16 :goto_0

    .line 734
    :sswitch_1e
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x1c

    aput v2, v1, v4

    goto/16 :goto_0

    .line 737
    :sswitch_1f
    iget-object v1, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mInputMode:[[I

    aget-object v1, v1, v4

    const/16 v2, 0x28

    aput v2, v1, v4

    goto/16 :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 641
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_6
        0xa -> :sswitch_1c
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_e
        0x12 -> :sswitch_10
        0x13 -> :sswitch_4
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x18 -> :sswitch_17
        0x19 -> :sswitch_18
        0x1b -> :sswitch_1a
        0x1d -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x22 -> :sswitch_1f
        0x24 -> :sswitch_1b
        0x25 -> :sswitch_5
        0x26 -> :sswitch_11
        0x27 -> :sswitch_12
        0x2f -> :sswitch_13
        0x54 -> :sswitch_d
        0x59 -> :sswitch_1
        0x61 -> :sswitch_f
        0x80 -> :sswitch_19
    .end sparse-switch
.end method

.method public setWritingArea(Landroid/graphics/Rect;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 618
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    const/16 v4, 0x3c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/diotek/dhwr/eur/b2b/DHWR;->SetWritingArea(IIIII)I

    move-result v0

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    .line 619
    iget v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    if-eqz v0, :cond_0

    .line 620
    const-string v0, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DioHWRDervice.setWritingArea.Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->mErrorCode:I

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    return-void
.end method
