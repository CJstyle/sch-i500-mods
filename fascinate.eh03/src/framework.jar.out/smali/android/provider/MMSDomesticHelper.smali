.class public Landroid/provider/MMSDomesticHelper;
.super Ljava/lang/Object;
.source "MMSDomesticHelper.java"


# static fields
.field private static final AUTH_MODE_INDEX:I = 0x0

.field public static final DOMESTIC_CONTENTLOCATION_URL:Ljava/lang/String; = "http://222.231.61.41/servlets/mms?message-id="

.field public static final DOMESTIC_MMSC:Ljava/lang/String; = "http://222.231.61.41/mms"

.field public static final DOMESTIC_WAPSMS_PREHEADER:Ljava/lang/String; = "//MMS/"

.field public static final DOMESTIC_WAP_ADDRESS:Ljava/lang/String; = "0000000000"

.field public static final LOG_TAG:Ljava/lang/String; = "MMSDomesticHelper"

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field public mMessageRef:I

.field public mOriginatingAddress:Ljava/lang/String;

.field public mUserData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "authtype"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MMSDomesticHelper;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>([BILjava/lang/String;)V
    .locals 0
    .parameter "userData"
    .parameter "messageRef"
    .parameter "originatingAddress"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/provider/MMSDomesticHelper;->mUserData:[B

    .line 34
    iput p2, p0, Landroid/provider/MMSDomesticHelper;->mMessageRef:I

    .line 35
    iput-object p3, p0, Landroid/provider/MMSDomesticHelper;->mOriginatingAddress:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    const-string v4, "0123456789abcdef"

    .line 120
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 136
    :goto_0
    return-object v3

    .line 122
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 127
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 129
    .local v0, b:I
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    .line 133
    const-string v3, "0123456789abcdef"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v0           #b:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static checkDomesticWapSMS(Landroid/content/Context;[BLjava/lang/String;)Landroid/provider/MMSDomesticHelper;
    .locals 6
    .parameter "context"
    .parameter "smsUserData"
    .parameter "originatingAddress"

    .prologue
    .line 59
    const/4 v1, 0x0

    .local v1, msgRef:I
    const/4 v0, 0x0

    .line 60
    .local v0, preHeadLen:I
    const/4 v0, 0x0

    .line 61
    .local v0, address:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v2, "//MMS/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 64
    .local v2, preHeadLen:I
    const-string v4, "MMSDomesticHelper"

    const-string v5, "mContext.sendBroadcast(testIntent);"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "test.wappush.PDU"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, testIntent:Landroid/content/Intent;
    const-string/jumbo v5, "smsUserData"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    if-eqz p1, :cond_0

    array-length p0, p1

    .end local p0
    add-int/lit8 v4, v2, 0x2

    if-ge p0, v4, :cond_1

    .line 70
    .end local v4           #testIntent:Landroid/content/Intent;
    :cond_0
    const/4 p0, 0x0

    move p1, v1

    .end local v1           #msgRef:I
    .local p1, msgRef:I
    move-object p2, p0

    move-object p0, v0

    .line 116
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #preHeadLen:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local p2
    .local p0, address:Ljava/lang/String;
    :goto_0
    return-object p2

    .line 73
    .end local p0           #address:Ljava/lang/String;
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #msgRef:I
    .restart local v2       #preHeadLen:I
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    .local p1, smsUserData:[B
    .restart local p2
    :cond_1
    move-object p0, p2

    .line 76
    .end local v0           #address:Ljava/lang/String;
    .restart local p0       #address:Ljava/lang/String;
    const/4 p2, 0x0

    .local p2, i:I
    :goto_1
    if-ge p2, v2, :cond_3

    .line 77
    aget-byte v0, p1, p2

    const-string v4, "//MMS/"

    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_2

    .line 78
    const/4 p1, 0x0

    move-object p2, p1

    move p1, v1

    .end local v1           #msgRef:I
    .local p1, msgRef:I
    goto :goto_0

    .line 76
    .restart local v1       #msgRef:I
    .local p1, smsUserData:[B
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 83
    :cond_3
    move p2, v2

    .end local v1           #msgRef:I
    :goto_2
    array-length v0, p1

    if-ge p2, v0, :cond_4

    .line 84
    aget-byte v0, p1, p2

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_5

    .line 91
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #i:I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, msgRef:I
    const-string p2, "MMSDomesticHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msgRef : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string p2, "MMSDomesticHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v2

    add-int/lit8 v1, p2, 0x1

    .line 97
    .local v1, offset:I
    array-length p2, p1

    sub-int v2, p2, v1

    .line 99
    .local v2, wabLen:I
    if-lez v2, :cond_6

    .line 100
    const/4 p2, 0x0

    .line 102
    .local p2, decodedByte:[B
    new-array p2, v2, [B

    .line 104
    .local p2, domesticUserData:[B
    const/4 v3, 0x0

    invoke-static {p1, v1, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    .end local v3           #sb:Ljava/lang/StringBuilder;
    invoke-static {p2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p1

    .line 112
    .local p1, decodedByte:[B
    new-instance p2, Landroid/provider/MMSDomesticHelper;

    .end local p2           #domesticUserData:[B
    invoke-direct {p2, p1, v0, p0}, Landroid/provider/MMSDomesticHelper;-><init>([BILjava/lang/String;)V

    .local p2, domesticWabData:Landroid/provider/MMSDomesticHelper;
    move p1, v0

    .line 113
    .end local v0           #msgRef:I
    .local p1, msgRef:I
    goto :goto_0

    .line 88
    .end local v1           #offset:I
    .local v2, preHeadLen:I
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    .local p1, smsUserData:[B
    .local p2, i:I
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v1, p1, p2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 116
    .end local p2           #i:I
    .restart local v0       #msgRef:I
    .restart local v1       #offset:I
    .local v2, wabLen:I
    :cond_6
    const/4 p1, 0x0

    move-object p2, p1

    move p1, v0

    .end local v0           #msgRef:I
    .local p1, msgRef:I
    goto/16 :goto_0
.end method

.method public static isDomesticTestMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mms_domestic_test_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    .line 45
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDomesticTestMode(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "domesticMode"

    .prologue
    const-string v2, "mms_domestic_test_mode"

    const-string v1, "MMSDomesticHelper"

    .line 49
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 50
    const-string v0, "MMSDomesticHelper"

    const-string/jumbo v0, "setDomesticTestMode : true"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_domestic_test_mode"

    const-string v1, "1"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v0, "MMSDomesticHelper"

    const-string/jumbo v0, "setDomesticTestMode : false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mms_domestic_test_mode"

    const-string v1, "0"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
