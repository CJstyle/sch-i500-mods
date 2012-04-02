.class Landroid/pim/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardParserImpl_V21$1;,
        Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;,
        Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "8BIT"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardParserImpl_V21"

.field private static final STATE_GROUP_OR_PROPERTY_NAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2


# instance fields
.field protected mCanceled:Z

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field protected mInterpreter:Landroid/pim/vcard/VCardInterpreter;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

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

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    sget v0, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 206
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 209
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x1

    iput v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    .line 213
    :cond_0
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 214
    return-void
.end method

.method private getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
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

    .line 861
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 863
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 864
    .local v2, pos:I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .local v0, builder:Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :goto_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 873
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 875
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 877
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 878
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_2

    .line 880
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 883
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 889
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #pos:I
    :goto_1
    return-object v3

    :cond_4
    move-object v3, p1

    goto :goto_1
.end method

.method private ignoreBadProperty()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1077
    :cond_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1079
    new-instance v1, Landroid/pim/vcard/exception/VCardException;

    const-string v2, "File ended during parsing X-SSH-VCARD-PARAMS"

    invoke-direct {v1, v2}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1081
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1083
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    return-void
.end method

.method private isAsciiLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 729
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 730
    :cond_1
    const/4 v0, 0x1

    .line 732
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseOneVCard(Z)Z
    .locals 14
    .parameter "firstRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, allowGarbage:Z
    if-eqz p1, :cond_1

    .line 295
    iget v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v8, :cond_1

    .line 296
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-ge v7, v8, :cond_1

    .line 297
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v8

    if-nez v8, :cond_0

    move v8, v12

    .line 321
    .end local v7           #i:I
    :goto_1
    return v8

    .line 300
    .restart local v7       #i:I
    :cond_0
    const/4 v0, 0x1

    .line 296
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 305
    .end local v7           #i:I
    :cond_1
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v12

    .line 306
    goto :goto_1

    .line 308
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 309
    .local v5, beforeStartEntry:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->startEntry()V

    .line 310
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 313
    .local v3, beforeParseItems:J
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseItems()V

    .line 314
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    .line 316
    invoke-virtual {p0, v13, v12}, Landroid/pim/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 319
    .local v1, beforeEndEntry:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->endEntry()V

    .line 320
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    move v8, v13

    .line 321
    goto :goto_1
.end method

.method private showPerformanceInfo()V
    .locals 5

    .prologue
    const-string v4, "VCardParserImpl_V21"

    const-string v3, " ms"

    .line 993
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total parsing time:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total readLine time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v1}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->getTotalmillisecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling the beggining of the record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling the end of the record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing line, and handling group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing ADR, ORG, and N fields:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing property values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling normal property values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling Quoted-Printable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling Base64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return-void
.end method

.method static unescapeCharacter(C)Ljava/lang/String;
    .locals 2
    .parameter "ch"

    .prologue
    .line 980
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    .line 981
    :cond_0
    const-string v0, "SC-02B"

    const-string v1, "SCH-I500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 988
    :goto_0
    return-object v0

    .line 985
    :cond_1
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 986
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 988
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCanceled:Z

    .line 1071
    return-void
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1035
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

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
    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 895
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :goto_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 900
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 902
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 908
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 905
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1039
    const-string v0, "8BIT"

    return-object v0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1023
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1027
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

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
    .line 276
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 278
    new-instance v1, Landroid/pim/vcard/exception/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, v0

    .line 282
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1019
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
    .line 949
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    :cond_0
    return-void
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 739
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p2}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .locals 2
    .parameter "charsetval"

    .prologue
    .line 698
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 700
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
    .line 680
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 682
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 684
    iput-object p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 688
    return-void

    .line 686
    :cond_1
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

    .line 706
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 708
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

    .line 710
    :cond_0
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 711
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 712
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 713
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 714
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

    .line 712
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    :cond_2
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 718
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 719
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 720
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 721
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

    .line 719
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 724
    :cond_4
    iget-object v4, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 725
    iget-object v4, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 932
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 936
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v1

    invoke-static {p2, v1}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 938
    return-void
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
    .line 644
    invoke-virtual {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 645
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

    .line 615
    const-string v3, "="

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_6

    .line 617
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 637
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :goto_0
    return-void

    .line 621
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_0
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 622
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :cond_1
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 624
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_2
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 626
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_3
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 628
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_4
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 630
    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 632
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

    .line 635
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_6
    aget-object v3, v2, v4

    invoke-virtual {p0, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParamWithoutName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 746
    .local v10, upperEncoding:Ljava/lang/String;
    const-string v12, "QUOTED-PRINTABLE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 748
    .local v8, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 749
    .local v7, result:Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v11, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v11}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 752
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    .line 832
    .end local v7           #result:Ljava/lang/String;
    .end local v11           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 753
    .end local v8           #start:J
    :cond_0
    const-string v12, "BASE64"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "B"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 755
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 759
    .restart local v8       #start:J
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v3}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .end local v3           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    goto :goto_0

    .line 762
    :catch_0
    move-exception v12

    move-object v5, v12

    .line 763
    .local v5, error:Ljava/lang/OutOfMemoryError;
    const-string v12, "VCardParserImpl_V21"

    const-string v13, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_1

    .line 768
    .end local v5           #error:Ljava/lang/OutOfMemoryError;
    .end local v8           #start:J
    :cond_2
    const-string v12, "7BIT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "8BIT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "X-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 770
    const-string v12, "VCardParserImpl_V21"

    const-string v13, "The encoding \"%s\" is unsupported by vCard %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v12

    if-nez v12, :cond_6

    .line 798
    const/4 v4, 0x0

    .line 800
    .local v4, builder:Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v6

    .line 807
    .local v6, nextLine:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_5

    const-string v12, "END:VCARD"

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 812
    if-nez v4, :cond_4

    .line 813
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_4
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 821
    :cond_5
    if-eqz v4, :cond_6

    .line 822
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 826
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v6           #nextLine:Ljava/lang/String;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 827
    .restart local v8       #start:J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .restart local v11       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v11}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    .line 830
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    goto/16 :goto_0
.end method

.method protected handleType(Ljava/lang/String;)V
    .locals 5
    .parameter "ptypeval"

    .prologue
    .line 651
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 655
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "TYPE"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .locals 5
    .parameter "pvalueval"

    .prologue
    .line 665
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 669
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "The value unsupported by TYPE of %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .parameter "propertyName"

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v0, "VCardParserImpl_V21"

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

    .line 253
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .parameter "ch"

    .prologue
    .line 971
    invoke-static {p1}, Landroid/pim/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "text"

    .prologue
    .line 962
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Landroid/pim/vcard/VCardInterpreter;)V
    .locals 7
    .parameter "is"
    .parameter "interpreter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1046
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "InputStream must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1049
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1050
    .local v2, tmpReader:Ljava/io/InputStreamReader;
    new-instance v3, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v3, v2}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1052
    if-eqz p2, :cond_4

    move-object v3, p2

    :goto_0
    iput-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1055
    .local v0, start:J
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_1

    .line 1056
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Landroid/pim/vcard/VCardInterpreter;->start()V

    .line 1058
    :cond_1
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseVCardFile()V

    .line 1059
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_2

    .line 1060
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Landroid/pim/vcard/VCardInterpreter;->end()V

    .line 1062
    :cond_2
    iget-wide v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    .line 1064
    invoke-static {}, Landroid/pim/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1065
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->showPerformanceInfo()V

    .line 1067
    :cond_3
    return-void

    .line 1052
    .end local v0           #start:J
    :cond_4
    new-instance v3, Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;-><init>(Landroid/pim/vcard/VCardParserImpl_V21$1;)V

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

    .line 450
    const-string v6, "8BIT"

    iput-object v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 452
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_0

    move v6, v10

    .line 499
    :goto_0
    return v6

    .line 458
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 460
    .local v4, start:J
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, propertyNameAndValue:[Ljava/lang/String;
    if-nez v2, :cond_1

    move v6, v8

    .line 462
    goto :goto_0

    .line 464
    :cond_1
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 465
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

    .line 467
    :cond_2
    aget-object v6, v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 468
    .local v1, propertyName:Ljava/lang/String;
    aget-object v3, v2, v8

    .line 470
    .local v3, propertyValue:Ljava/lang/String;
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    .line 472
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

    .line 473
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 474
    invoke-virtual {p0, v1, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    move v6, v10

    .line 476
    goto :goto_0

    .line 477
    :cond_4
    const-string v6, "AGENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 478
    invoke-virtual {p0, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handleAgent(Ljava/lang/String;)V

    move v6, v10

    .line 479
    goto :goto_0

    .line 481
    :cond_5
    const-string v6, "X-SSH-VCARD-PARAMS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 482
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->ignoreBadProperty()V

    move v6, v10

    .line 483
    goto/16 :goto_0

    .line 485
    :cond_6
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 486
    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 487
    const-string v6, "VCARD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 488
    new-instance v6, Landroid/pim/vcard/exception/VCardNestedException;

    const-string v7, "This vCard has nested vCard data in it."

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 490
    :cond_7
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

    .line 492
    :cond_8
    const-string v6, "VERSION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 493
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

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 496
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 497
    invoke-virtual {p0, v1, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    move v6, v10

    .line 499
    goto/16 :goto_0

    .line 502
    :cond_a
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
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v7, 0x0

    .line 414
    .local v7, ended:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 415
    .local v0, beforeBeginProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    .line 416
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 417
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseItem()Z

    move-result v7

    .line 418
    if-nez v7, :cond_0

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 420
    .local v2, beforeEndProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    .line 421
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    .line 424
    .end local v2           #beforeEndProperty:J
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 426
    .local v4, beforeStartProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    .line 427
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 429
    :try_start_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_0
    .catch Landroid/pim/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 435
    :goto_1
    if-nez v7, :cond_0

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 437
    .restart local v2       #beforeEndProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    .line 438
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    goto :goto_0

    .line 430
    .end local v2           #beforeEndProperty:J
    :catch_0
    move-exception v6

    .line 431
    .local v6, e:Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v7, 0x0

    goto :goto_1

    .line 441
    .end local v4           #beforeStartProperty:J
    .end local v6           #e:Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
    :cond_1
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
    .line 223
    const/4 v1, 0x1

    .line 225
    .local v1, readingFirstFile:Z
    :goto_0
    iget-boolean v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-eqz v3, :cond_1

    .line 234
    :cond_0
    iget v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v3, :cond_2

    .line 235
    const/4 v2, 0x1

    .line 236
    .local v2, useCache:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-ge v0, v3, :cond_2

    .line 237
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 238
    const/4 v2, 0x0

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    .end local v0           #i:I
    .end local v2           #useCache:Z
    :cond_1
    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    const/4 v1, 0x0

    goto :goto_0

    .line 241
    :cond_2
    return-void
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 333
    :cond_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    move v3, v5

    .line 355
    :goto_0
    return v3

    .line 336
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 340
    const-string v3, ":"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 349
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

    .line 351
    goto :goto_0

    .line 352
    :cond_2
    if-nez p1, :cond_4

    .line 353
    iget v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v3, :cond_3

    .line 354
    iput-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    move v3, v5

    .line 355
    goto :goto_0

    .line 357
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

    .line 361
    :cond_4
    if-nez p1, :cond_0

    .line 363
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

    .line 382
    :cond_0
    if-eqz p1, :cond_1

    .line 385
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 397
    .local v0, line:Ljava/lang/String;
    :goto_0
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 398
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

    .line 406
    :goto_1
    return-void

    .line 388
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 389
    .restart local v0       #line:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 390
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 401
    .restart local v1       #strArray:[Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 402
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END:VCARD != \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_4
    const/4 p1, 0x0

    .line 405
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
    .line 512
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 513
    .local v6, propertyNameAndValue:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 514
    .local v3, length:I
    if-lez v3, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_0

    .line 515
    new-instance v8, Landroid/pim/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v8}, Landroid/pim/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v8

    .line 518
    :cond_0
    const/4 v7, 0x0

    .line 519
    .local v7, state:I
    const/4 v4, 0x0

    .line 523
    .local v4, nameIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_e

    .line 524
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 525
    .local v0, ch:C
    packed-switch v7, :pswitch_data_0

    .line 523
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 527
    :pswitch_0
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_4

    .line 528
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 529
    .local v5, propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 530
    iput-object p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 531
    const/4 v8, 0x0

    .line 587
    .end local v5           #propertyName:Ljava/lang/String;
    :goto_2
    return-object v8

    .line 533
    .restart local v5       #propertyName:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 534
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 535
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_3

    .line 536
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_3
    move-object v8, v6

    .line 540
    goto :goto_2

    .line 538
    :cond_3
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_3

    .line 541
    .end local v5           #propertyName:Ljava/lang/String;
    :cond_4
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_6

    .line 542
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, groupName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 544
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Empty group found. Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_4
    add-int/lit8 v4, v2, 0x1

    .line 549
    goto :goto_1

    .line 546
    :cond_5
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyGroup(Ljava/lang/String;)V

    goto :goto_4

    .line 549
    .end local v1           #groupName:Ljava/lang/String;
    :cond_6
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_1

    .line 550
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 551
    .restart local v5       #propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 552
    iput-object p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 553
    const/4 v8, 0x0

    goto :goto_2

    .line 556
    :cond_7
    const-string v8, "X-SSH-VCARD-PARAMS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 557
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 558
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    move-object v8, v6

    .line 559
    goto :goto_2

    .line 562
    :cond_8
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 563
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 564
    add-int/lit8 v4, v2, 0x1

    .line 565
    const/4 v7, 0x1

    .line 566
    goto/16 :goto_1

    .line 571
    .end local v5           #propertyName:Ljava/lang/String;
    :pswitch_1
    const/16 v8, 0x22

    if-ne v0, v8, :cond_a

    .line 572
    const-string v8, "2.1"

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 573
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_9
    const/4 v7, 0x2

    goto/16 :goto_1

    .line 577
    :cond_a
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_b

    .line 578
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 579
    add-int/lit8 v4, v2, 0x1

    goto/16 :goto_1

    .line 580
    :cond_b
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_1

    .line 581
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 582
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_c

    .line 583
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_5
    move-object v8, v6

    .line 587
    goto/16 :goto_2

    .line 585
    :cond_c
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_5

    .line 592
    :pswitch_2
    const/16 v8, 0x22

    if-ne v0, v8, :cond_1

    .line 593
    const-string v8, "2.1"

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 594
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_d
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 604
    .end local v0           #ch:C
    :cond_e
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

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
