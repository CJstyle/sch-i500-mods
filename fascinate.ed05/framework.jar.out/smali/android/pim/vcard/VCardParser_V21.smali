.class public Landroid/pim/vcard/VCardParser_V21;
.super Landroid/pim/vcard/VCardParser;
.source "VCardParser_V21.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardParser_V21"

.field private static final STATE_GROUP_OR_PROPNAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2

.field private static final sAvailableEncodingV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAvailablePropertyNameSetV21:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownValueSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBuilder:Landroid/pim/vcard/VCardInterpreter;

.field protected mEncoding:Ljava/lang/String;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Ljava/io/BufferedReader;

.field private mTimeEndProperty:J

.field private mTimeHandleBase64:J

.field private mTimeHandleMiscPropertyValue:J

.field private mTimeHandleQuotedPrintable:J

.field private mTimeParseAdrOrgN:J

.field private mTimeParseItems:J

.field private mTimeParseLineAndHandleGroup:J

.field private mTimeParsePropertyValues:J

.field private mTimeReadEndRecord:J

.field private mTimeReadStartRecord:J

.field private mTimeStartProperty:J

.field private mTimeTotal:J

.field protected mUnknownTypeMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUnknownValueMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final sDefaultEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x32

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "DOM"

    aput-object v2, v1, v4

    const-string v2, "INTL"

    aput-object v2, v1, v5

    const-string v2, "POSTAL"

    aput-object v2, v1, v6

    const-string v2, "PARCEL"

    aput-object v2, v1, v7

    const-string v2, "HOME"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "WORK"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "PREF"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VOICE"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "FAX"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "MSG"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CELL"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "PAGER"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "BBS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "MODEM"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "CAR"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ISDN"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "VIDEO"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "AOL"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "APPLELINK"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "ATTMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CIS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "EWORLD"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "INTERNET"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "IBMMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "MCIMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "POWERSHARE"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "PRODIGY"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "TLX"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "X400"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "GIF"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "CGM"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "WMF"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "BMP"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "MET"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "PMB"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "DIB"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "PICT"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "TIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "PDF"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "PS"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "JPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "QTIME"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "MPEG"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "MPEG2"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "AVI"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "WAVE"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "AIFF"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "PCM"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "X509"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "PGP"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "INLINE"

    aput-object v2, v1, v4

    const-string v2, "URL"

    aput-object v2, v1, v5

    const-string v2, "CONTENT-ID"

    aput-object v2, v1, v6

    const-string v2, "CID"

    aput-object v2, v1, v7

    const-string v2, "DATE"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BEGIN"

    aput-object v2, v1, v4

    const-string v2, "LOGO"

    aput-object v2, v1, v5

    const-string v2, "PHOTO"

    aput-object v2, v1, v6

    const-string v2, "LABEL"

    aput-object v2, v1, v7

    const-string v2, "FN"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "TITLE"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SOUND"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "VERSION"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "TEL"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "EMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TZ"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GEO"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NOTE"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "URL"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "BDAY"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ROLE"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "REV"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "UID"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "KEY"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "MAILER"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardParser_V21;->sAvailablePropertyNameSetV21:Ljava/util/HashSet;

    .line 68
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "7BIT"

    aput-object v2, v1, v4

    const-string v2, "8BIT"

    aput-object v2, v1, v5

    const-string v2, "QUOTED-PRINTABLE"

    aput-object v2, v1, v6

    const-string v2, "BASE64"

    aput-object v2, v1, v7

    const-string v2, "B"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardParser_V21;-><init>(Landroid/pim/vcard/VCardSourceDetector;)V

    .line 114
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "parseType"

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1}, Landroid/pim/vcard/VCardParser;-><init>(I)V

    .line 76
    iput-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    .line 82
    iput-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 84
    const-string v0, "8BIT"

    iput-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->sDefaultEncoding:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mUnknownTypeMap:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mUnknownValueMap:Ljava/util/Set;

    .line 122
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Landroid/pim/vcard/VCardParser_V21;->mNestCount:I

    .line 125
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/pim/vcard/VCardSourceDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/pim/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardParser_V21;-><init>(I)V

    .line 118
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 918
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 919
    :cond_1
    const/4 v0, 0x1

    .line 921
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOneVCard(Z)Z
    .locals 10
    .parameter "firstReading"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, allowGarbage:Z
    if-eqz p1, :cond_1

    .line 216
    iget v4, p0, Landroid/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v4, :cond_1

    .line 217
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Landroid/pim/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v4, :cond_1

    .line 218
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v8

    .line 244
    .end local v1           #i:I
    :goto_1
    return v4

    .line 221
    .restart local v1       #i:I
    :cond_0
    const/4 v0, 0x1

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParser_V21;->readBeginVCard(Z)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v8

    .line 227
    goto :goto_1

    .line 230
    :cond_2
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v4, :cond_3

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 232
    .local v2, start:J
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4}, Landroid/pim/vcard/VCardInterpreter;->startEntry()V

    .line 233
    iget-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeReadStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeReadStartRecord:J

    .line 235
    .end local v2           #start:J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 236
    .restart local v2       #start:J
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->parseItems()V

    .line 237
    iget-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParseItems:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParseItems:J

    .line 238
    invoke-virtual {p0, v9, v8}, Landroid/pim/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 239
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v4, :cond_4

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 241
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4}, Landroid/pim/vcard/VCardInterpreter;->endEntry()V

    .line 242
    iget-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeReadEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeReadEndRecord:J

    :cond_4
    move v4, v9

    .line 244
    goto :goto_1
.end method

.method private showPerformanceInfo()V
    .locals 6

    .prologue
    const-string v5, "VCardParser_V21"

    const-string v4, " ms"

    .line 897
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total parsing time:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    instance-of v0, v0, Landroid/pim/vcard/CustomBufferedReader;

    if-eqz v0, :cond_0

    .line 899
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total readLine time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    check-cast v0, Landroid/pim/vcard/CustomBufferedReader;

    invoke-virtual {v0}, Landroid/pim/vcard/CustomBufferedReader;->getTotalmillisecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling the beggining of the record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeReadStartRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling the end of the record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeReadEndRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing line, and handling group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParseLineAndHandleGroup:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing ADR, ORG, and N fields:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParseAdrOrgN:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing property values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParsePropertyValues:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling normal property values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeHandleMiscPropertyValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling Quoted-Printable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeHandleQuotedPrintable:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v0, "VCardParser_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling Base64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeHandleBase64:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 844
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_1

    .line 845
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 847
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :goto_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 759
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 760
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 763
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 769
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 766
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 199
    new-instance v1, Landroid/pim/vcard/exception/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, v0

    .line 203
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "="

    const-string v8, "\r\n"

    .line 720
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 722
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 723
    .local v2, pos:I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v0, builder:Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :goto_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 732
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "File ended during parsing quoted-printable String"

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 735
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 737
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 738
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_2

    .line 740
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 743
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 749
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #pos:I
    :goto_1
    return-object v3

    :cond_4
    move-object v3, p1

    goto :goto_1
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .locals 2
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    :cond_0
    return-void
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 654
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p2}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 658
    :cond_0
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .locals 2
    .parameter "charsetval"

    .prologue
    .line 616
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 620
    :cond_0
    return-void
.end method

.method protected handleEncoding(Ljava/lang/String;)V
    .locals 3
    .parameter "pencodingval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Landroid/pim/vcard/VCardParser_V21;->isValidEncoding(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 605
    :cond_1
    iput-object p1, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 609
    return-void

    .line 607
    :cond_2
    new-instance v0, Landroid/pim/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Ljava/lang/String;)V
    .locals 9
    .parameter "langval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const-string v8, "Invalid Language: \""

    const-string v7, "\""

    .line 626
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 628
    new-instance v4, Landroid/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 630
    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 631
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 632
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 633
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 634
    new-instance v4, Landroid/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 632
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_2
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 638
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 639
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 640
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardParser_V21;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 641
    new-instance v4, Landroid/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 639
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    :cond_4
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v4, :cond_5

    .line 645
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 646
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 648
    :cond_5
    return-void
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 796
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {p0, p2}, Landroid/pim/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 800
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->getVersion()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-static {p2, v1}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 804
    :cond_1
    return-void

    .line 801
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleParamWithoutName(Ljava/lang/String;)V
    .locals 0
    .parameter "paramValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p0, p1}, Landroid/pim/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 531
    const-string v3, "="

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_6

    .line 533
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParser_V21;->handleType(Ljava/lang/String;)V

    .line 553
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 537
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_0
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 538
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParser_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :cond_1
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 540
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParser_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 542
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParser_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :cond_3
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 544
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParser_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_4
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 546
    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardParser_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_5
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 551
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_6
    aget-object v3, v2, v4

    invoke-virtual {p0, v3}, Landroid/pim/vcard/VCardParser_V21;->handleParamWithoutName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const-string v7, "VCardParser_V21"

    .line 662
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 664
    .local v2, start:J
    invoke-virtual {p0, p2}, Landroid/pim/vcard/VCardParser_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, result:Ljava/lang/String;
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v5, :cond_0

    .line 666
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v4, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v5, v4}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 670
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-wide v5, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeHandleQuotedPrintable:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeHandleQuotedPrintable:J

    .line 705
    .end local v1           #result:Ljava/lang/String;
    :goto_0
    return-void

    .line 671
    .end local v2           #start:J
    :cond_1
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "BASE64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 673
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 677
    .restart local v2       #start:J
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/pim/vcard/VCardParser_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .restart local v1       #result:Ljava/lang/String;
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v5, :cond_3

    .line 679
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .restart local v4       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v5, v4}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v1           #result:Ljava/lang/String;
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    iget-wide v5, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeHandleBase64:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeHandleBase64:J

    goto :goto_0

    .line 683
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 684
    .local v0, error:Ljava/lang/OutOfMemoryError;
    const-string v5, "VCardParser_V21"

    const-string v5, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v5, :cond_3

    .line 686
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_1

    .line 691
    .end local v0           #error:Ljava/lang/OutOfMemoryError;
    .end local v2           #start:J
    :cond_4
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "7BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    const-string v6, "8BIT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "X-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 694
    const-string v5, "VCardParser_V21"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The encoding unsupported by vCard spec: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 698
    .restart local v2       #start:J
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v5, :cond_6

    .line 699
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .restart local v4       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Landroid/pim/vcard/VCardParser_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v5, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v5, v4}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 703
    .end local v4           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-wide v5, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeHandleMiscPropertyValue:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeHandleMiscPropertyValue:J

    goto/16 :goto_0
.end method

.method protected handleType(Ljava/lang/String;)V
    .locals 4
    .parameter "ptypeval"

    .prologue
    .line 567
    move-object v0, p1

    .line 568
    .local v0, upperTypeValue:Ljava/lang/String;
    sget-object v1, Landroid/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/pim/vcard/VCardParser_V21;->mUnknownTypeMap:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    iget-object v1, p0, Landroid/pim/vcard/VCardParser_V21;->mUnknownTypeMap:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 571
    const-string v1, "VCardParser_V21"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE unsupported by vCard 2.1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_0
    iget-object v1, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    const-string v2, "TYPE"

    invoke-interface {v1, v2}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 575
    iget-object v1, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v1, v0}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 577
    :cond_1
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .locals 3
    .parameter "pvalueval"

    .prologue
    .line 583
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mUnknownValueMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mUnknownValueMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 587
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VALUE unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 593
    :cond_1
    return-void
.end method

.method protected isValidEncoding(Ljava/lang/String;)Z
    .locals 2
    .parameter "encoding"

    .prologue
    .line 178
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sAvailableEncodingV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 165
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sAvailablePropertyNameSetV21:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mUnknownTypeMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mUnknownTypeMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v0, "VCardParser_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 837
    invoke-static {p1}, Landroid/pim/vcard/VCardParser_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "text"

    .prologue
    .line 829
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/pim/vcard/VCardInterpreter;Z)V
    .locals 0
    .parameter "is"
    .parameter "charset"
    .parameter "builder"
    .parameter "canceled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 892
    iput-boolean p4, p0, Landroid/pim/vcard/VCardParser_V21;->mCanceled:Z

    .line 893
    invoke-virtual {p0, p1, p2, p3}, Landroid/pim/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/pim/vcard/VCardInterpreter;)Z

    .line 894
    return-void
.end method

.method public parse(Ljava/io/InputStream;Landroid/pim/vcard/VCardInterpreter;)Z
    .locals 1
    .parameter "is"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 854
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, p1, v0, p2}, Landroid/pim/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/pim/vcard/VCardInterpreter;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;Landroid/pim/vcard/VCardInterpreter;)Z
    .locals 7
    .parameter "is"
    .parameter "charset"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 860
    if-nez p2, :cond_0

    .line 861
    const-string p2, "iso-8859-1"

    .line 863
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 864
    .local v2, tmpReader:Ljava/io/InputStreamReader;
    invoke-static {}, Landroid/pim/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 865
    new-instance v3, Landroid/pim/vcard/CustomBufferedReader;

    invoke-direct {v3, v2}, Landroid/pim/vcard/CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Landroid/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    .line 870
    :goto_0
    iput-object p3, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    .line 872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 873
    .local v0, start:J
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_1

    .line 874
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Landroid/pim/vcard/VCardInterpreter;->start()V

    .line 876
    :cond_1
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->parseVCardFile()V

    .line 877
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_2

    .line 878
    iget-object v3, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Landroid/pim/vcard/VCardInterpreter;->end()V

    .line 880
    :cond_2
    iget-wide v3, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeTotal:J

    .line 882
    invoke-static {}, Landroid/pim/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 883
    invoke-direct {p0}, Landroid/pim/vcard/VCardParser_V21;->showPerformanceInfo()V

    .line 886
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 867
    .end local v0           #start:J
    :cond_4
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Landroid/pim/vcard/VCardParser_V21;->mReader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method protected parseItem()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v11, "\""

    .line 378
    const-string v6, "8BIT"

    iput-object v6, p0, Landroid/pim/vcard/VCardParser_V21;->mEncoding:Ljava/lang/String;

    .line 380
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_0

    move v6, v10

    .line 425
    :goto_0
    return v6

    .line 387
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 389
    .local v4, start:J
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParser_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, propertyNameAndValue:[Ljava/lang/String;
    if-nez v2, :cond_1

    move v6, v8

    .line 391
    goto :goto_0

    .line 393
    :cond_1
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 394
    new-instance v6, Landroid/pim/vcard/exception/VCardInvalidLineException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 396
    :cond_2
    aget-object v6, v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, propertyName:Ljava/lang/String;
    aget-object v3, v2, v8

    .line 399
    .local v3, propertyValue:Ljava/lang/String;
    iget-wide v6, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParseLineAndHandleGroup:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParseLineAndHandleGroup:J

    .line 401
    const-string v6, "ADR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "ORG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "N"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 403
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 404
    invoke-virtual {p0, v1, v3}, Landroid/pim/vcard/VCardParser_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-wide v6, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParseAdrOrgN:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParseAdrOrgN:J

    move v6, v10

    .line 406
    goto :goto_0

    .line 407
    :cond_4
    const-string v6, "AGENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 408
    invoke-virtual {p0, v3}, Landroid/pim/vcard/VCardParser_V21;->handleAgent(Ljava/lang/String;)V

    move v6, v10

    .line 409
    goto :goto_0

    .line 410
    :cond_5
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParser_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 411
    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 412
    const-string v6, "VCARD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 413
    new-instance v6, Landroid/pim/vcard/exception/VCardNestedException;

    const-string v7, "This vCard has nested vCard data in it."

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 415
    :cond_6
    new-instance v6, Landroid/pim/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown BEGIN type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 417
    :cond_7
    const-string v6, "VERSION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->getVersionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 419
    new-instance v6, Landroid/pim/vcard/exception/VCardVersionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incompatible version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->getVersionString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 422
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 423
    invoke-virtual {p0, v1, v3}, Landroid/pim/vcard/VCardParser_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-wide v6, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParsePropertyValues:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeParsePropertyValues:J

    move v6, v10

    .line 425
    goto/16 :goto_0

    .line 428
    :cond_9
    new-instance v6, Landroid/pim/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown property name: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected parseItems()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 337
    .local v1, ended:Z
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v4, :cond_0

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 339
    .local v2, start:J
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    .line 340
    iget-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    .line 342
    .end local v2           #start:J
    :cond_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->parseItem()Z

    move-result v1

    .line 343
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 345
    .restart local v2       #start:J
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    .line 346
    iget-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    .line 349
    .end local v2           #start:J
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 351
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v4, :cond_2

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 353
    .restart local v2       #start:J
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    .line 354
    iget-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeStartProperty:J

    .line 357
    .end local v2           #start:J
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->parseItem()Z
    :try_end_0
    .catch Landroid/pim/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 362
    :goto_1
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 364
    .restart local v2       #start:J
    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    .line 365
    iget-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/pim/vcard/VCardParser_V21;->mTimeEndProperty:J

    goto :goto_0

    .line 358
    .end local v2           #start:J
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
    const-string v4, "VCardParser_V21"

    const-string v5, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, 0x0

    goto :goto_1

    .line 368
    .end local v0           #e:Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
    :cond_3
    return-void
.end method

.method protected parseVCardFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    .line 135
    .local v0, firstReading:Z
    :goto_0
    iget-boolean v3, p0, Landroid/pim/vcard/VCardParser_V21;->mCanceled:Z

    if-eqz v3, :cond_1

    .line 144
    :cond_0
    iget v3, p0, Landroid/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v3, :cond_2

    .line 145
    const/4 v2, 0x1

    .line 146
    .local v2, useCache:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v3, p0, Landroid/pim/vcard/VCardParser_V21;->mNestCount:I

    if-ge v1, v3, :cond_2

    .line 147
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/pim/vcard/VCardParser_V21;->readEndVCard(ZZ)V

    .line 148
    const/4 v2, 0x0

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v1           #i:I
    .end local v2           #useCache:Z
    :cond_1
    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardParser_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :cond_2
    return-void
.end method

.method protected readBeginVCard(Z)Z
    .locals 8
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    :cond_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    move v3, v5

    .line 277
    :goto_0
    return v3

    .line 259
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 263
    const-string v3, ":"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 270
    .local v0, length:I
    if-ne v0, v7, :cond_2

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BEGIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    .line 273
    goto :goto_0

    .line 274
    :cond_2
    if-nez p1, :cond_4

    .line 275
    iget v3, p0, Landroid/pim/vcard/VCardParser_V21;->mNestCount:I

    if-lez v3, :cond_3

    .line 276
    iput-object v1, p0, Landroid/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    move v3, v5

    .line 277
    goto :goto_0

    .line 279
    :cond_3
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 284
    :cond_4
    if-nez p1, :cond_0

    .line 286
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readEndVCard(ZZ)V
    .locals 5
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 303
    :cond_0
    if-eqz p1, :cond_1

    .line 306
    iget-object v0, p0, Landroid/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 318
    .local v0, line:Ljava/lang/String;
    :goto_0
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    :goto_1
    return-void

    .line 309
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParser_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 310
    .restart local v0       #line:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 311
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 323
    .restart local v1       #strArray:[Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 324
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END:VCARD != \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_4
    const/4 p1, 0x0

    .line 327
    if-nez p2, :cond_0

    goto :goto_1
.end method

.method protected separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 438
    const/4 v7, 0x0

    .line 439
    .local v7, state:I
    const/4 v4, 0x0

    .line 441
    .local v4, nameIndex:I
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 443
    .local v6, propertyNameAndValue:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 444
    .local v3, length:I
    if-lez v3, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_0

    .line 445
    new-instance v8, Landroid/pim/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v8}, Landroid/pim/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v8

    .line 448
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_d

    .line 449
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 450
    .local v0, ch:C
    packed-switch v7, :pswitch_data_0

    .line 448
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :pswitch_0
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_5

    .line 453
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 455
    iput-object p1, p0, Landroid/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 456
    const/4 v8, 0x0

    .line 502
    .end local v5           #propertyName:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 458
    .restart local v5       #propertyName:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v8, :cond_3

    .line 459
    iget-object v8, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 461
    :cond_3
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 462
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_4

    .line 463
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_3
    move-object v8, v6

    .line 467
    goto :goto_2

    .line 465
    :cond_4
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_3

    .line 468
    .end local v5           #propertyName:Ljava/lang/String;
    :cond_5
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_7

    .line 469
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, groupName:Ljava/lang/String;
    iget-object v8, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v8, :cond_6

    .line 471
    iget-object v8, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyGroup(Ljava/lang/String;)V

    .line 473
    :cond_6
    add-int/lit8 v4, v2, 0x1

    .line 474
    goto :goto_1

    .end local v1           #groupName:Ljava/lang/String;
    :cond_7
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_1

    .line 475
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 476
    .restart local v5       #propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 477
    iput-object p1, p0, Landroid/pim/vcard/VCardParser_V21;->mPreviousLine:Ljava/lang/String;

    .line 478
    const/4 v8, 0x0

    goto :goto_2

    .line 480
    :cond_8
    iget-object v8, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v8, :cond_9

    .line 481
    iget-object v8, p0, Landroid/pim/vcard/VCardParser_V21;->mBuilder:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 483
    :cond_9
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 484
    add-int/lit8 v4, v2, 0x1

    .line 485
    const/4 v7, 0x1

    .line 486
    goto :goto_1

    .line 490
    .end local v5           #propertyName:Ljava/lang/String;
    :pswitch_1
    const/16 v8, 0x22

    if-ne v0, v8, :cond_a

    .line 491
    const/4 v7, 0x2

    goto :goto_1

    .line 492
    :cond_a
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_b

    .line 493
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/pim/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 494
    add-int/lit8 v4, v2, 0x1

    goto/16 :goto_1

    .line 495
    :cond_b
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_1

    .line 496
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/pim/vcard/VCardParser_V21;->handleParams(Ljava/lang/String;)V

    .line 497
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_c

    .line 498
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_4
    move-object v8, v6

    .line 502
    goto/16 :goto_2

    .line 500
    :cond_c
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_4

    .line 507
    :pswitch_2
    const/16 v8, 0x22

    if-ne v0, v8, :cond_1

    .line 508
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 515
    .end local v0           #ch:C
    :cond_d
    new-instance v8, Landroid/pim/vcard/exception/VCardInvalidLineException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 450
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
