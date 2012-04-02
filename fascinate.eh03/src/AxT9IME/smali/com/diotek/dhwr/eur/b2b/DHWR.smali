.class public Lcom/diotek/dhwr/eur/b2b/DHWR;
.super Ljava/lang/Object;
.source "DHWR.java"


# static fields
.field public static final DTYPE_AUTO_SPACE:I

.field public static final DTYPE_CONSONANT:I

.field public static final DTYPE_CONS_RECOMMEND:I

.field public static final DTYPE_CURRENCY:I

.field public static final DTYPE_CURSIVE:I

.field public static final DTYPE_ENDPUNC:I

.field public static final DTYPE_JOHAP:I

.field public static final DTYPE_LOWERCASE:I

.field public static final DTYPE_MULTI_CHARS:I

.field public static final DTYPE_MULTI_LINE:I

.field public static final DTYPE_NONE:I

.field public static final DTYPE_SIMP_TO_TRAD:I

.field public static final DTYPE_TONE:I

.field public static final DTYPE_TRAD_TO_SIMP:I

.field public static final DTYPE_UNISTROKE:I

.field public static final DTYPE_UPPERCASE:I

.field public static final DTYPE_VOWEL:I

.field public static final DTYPE_VOWEL_DEPENDENT:I

.field public static final DTYPE_WANSUNG:I


# instance fields
.field public nCands:I

.field public nMode:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "dhwr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_NONE:I

    .line 152
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_MULTI_CHARS:I

    .line 153
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UPPERCASE:I

    .line 154
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_LOWERCASE:I

    .line 155
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_AUTO_SPACE:I

    .line 156
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_MULTI_LINE:I

    .line 157
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_UNISTROKE:I

    .line 158
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_CURSIVE:I

    .line 159
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_WANSUNG:I

    .line 160
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_JOHAP:I

    .line 161
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_CONSONANT:I

    .line 162
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_CONS_RECOMMEND:I

    .line 163
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_VOWEL:I

    .line 164
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_VOWEL_DEPENDENT:I

    .line 165
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_TONE:I

    .line 166
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_CURRENCY:I

    .line 167
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_SIMP_TO_TRAD:I

    .line 168
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_TRAD_TO_SIMP:I

    .line 169
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/diotek/dhwr/eur/b2b/DHWR;->BIT_FLAG(I)I

    move-result v0

    sput v0, Lcom/diotek/dhwr/eur/b2b/DHWR;->DTYPE_ENDPUNC:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DHWR;->type:I

    .line 261
    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DHWR;->nMode:I

    .line 262
    const/16 v0, 0xa

    iput v0, p0, Lcom/diotek/dhwr/eur/b2b/DHWR;->nCands:I

    .line 263
    return-void
.end method

.method public static final native AddPoint(SS)I
.end method

.method private static final BIT_FLAG(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 24
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method public static final native Create()I
.end method

.method public static final native EndStroke()I
.end method

.method public static final native GetInkCount([I)I
.end method

.method public static final native InkClear()I
.end method

.method public static final native Recognize([C)I
.end method

.method public static final native SetAttribute(I[[II[I)I
.end method

.method public static final native SetWritingArea(IIIII)I
.end method
