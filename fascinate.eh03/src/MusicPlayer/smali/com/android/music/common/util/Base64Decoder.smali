.class public Lcom/android/music/common/util/Base64Decoder;
.super Ljava/lang/Object;
.source "Base64Decoder.java"


# static fields
.field private static map1:[C

.field private static map2:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    .line 27
    new-array v3, v6, [C

    sput-object v3, Lcom/android/music/common/util/Base64Decoder;->map1:[C

    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, i:I
    const/16 v0, 0x41

    .local v0, c:C
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    sget-object v3, Lcom/android/music/common/util/Base64Decoder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 31
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    sget-object v3, Lcom/android/music/common/util/Base64Decoder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 32
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    sget-object v3, Lcom/android/music/common/util/Base64Decoder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 33
    :cond_2
    sget-object v3, Lcom/android/music/common/util/Base64Decoder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    const/16 v4, 0x2b

    aput-char v4, v3, v2

    sget-object v3, Lcom/android/music/common/util/Base64Decoder;->map1:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    const/16 v4, 0x2f

    aput-char v4, v3, v1

    .line 35
    const/16 v3, 0x80

    new-array v3, v3, [B

    sput-object v3, Lcom/android/music/common/util/Base64Decoder;->map2:[B

    .line 37
    const/4 v1, 0x0

    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_3
    sget-object v3, Lcom/android/music/common/util/Base64Decoder;->map2:[B

    array-length v3, v3

    if-ge v1, v3, :cond_3

    sget-object v3, Lcom/android/music/common/util/Base64Decoder;->map2:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 38
    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_4

    sget-object v3, Lcom/android/music/common/util/Base64Decoder;->map2:[B

    sget-object v4, Lcom/android/music/common/util/Base64Decoder;->map1:[C

    aget-char v4, v4, v1

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getDecodedString(Ljava/lang/String;)[B
    .locals 11
    .parameter "in"

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    .local v0, iLen:I
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_a

    .line 49
    const/4 p0, 0x0

    move v10, v0

    .end local v0           #iLen:I
    .local v10, iLen:I
    move-object v0, p0

    move p0, v10

    .line 82
    .end local v10           #iLen:I
    .local p0, iLen:I
    :goto_0
    return-object v0

    .line 51
    .local v4, iLen:I
    .local p0, in:Ljava/lang/String;
    :goto_1
    if-lez v4, :cond_0

    const/4 v0, 0x1

    sub-int v0, v4, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 52
    add-int/lit8 v0, v4, -0x1

    .end local v4           #iLen:I
    .restart local v0       #iLen:I
    move v4, v0

    .end local v0           #iLen:I
    .restart local v4       #iLen:I
    goto :goto_1

    .line 53
    :cond_0
    mul-int/lit8 v0, v4, 0x3

    div-int/lit8 v6, v0, 0x4

    .line 54
    .local v6, oLen:I
    new-array v8, v6, [B

    .line 55
    .local v8, out:[B
    const/4 v0, 0x0

    .line 56
    .local v0, ip:I
    const/4 v1, 0x0

    .local v1, op:I
    move v7, v1

    .line 57
    .end local v1           #op:I
    .local v7, op:I
    :goto_2
    if-ge v0, v4, :cond_7

    .line 58
    add-int/lit8 v1, v0, 0x1

    .end local v0           #ip:I
    .local v1, ip:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 59
    .local v0, i0:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #ip:I
    .local v2, ip:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 60
    .local v1, i1:I
    if-ge v2, v4, :cond_2

    add-int/lit8 v3, v2, 0x1

    .end local v2           #ip:I
    .local v3, ip:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v5, v3

    .line 61
    .end local v3           #ip:I
    .local v2, i2:I
    .local v5, ip:I
    :goto_3
    if-ge v5, v4, :cond_3

    add-int/lit8 v3, v5, 0x1

    .end local v5           #ip:I
    .restart local v3       #ip:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v10, v5

    move v5, v3

    .end local v3           #ip:I
    .restart local v5       #ip:I
    move v3, v10

    .line 62
    .local v3, i3:I
    :goto_4
    const/16 v9, 0x7f

    if-gt v0, v9, :cond_1

    const/16 v9, 0x7f

    if-gt v1, v9, :cond_1

    const/16 v9, 0x7f

    if-gt v2, v9, :cond_1

    const/16 v9, 0x7f

    if-le v3, v9, :cond_4

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #in:Ljava/lang/String;
    const-string v0, "Illegal character in Base64 encoded data."

    .end local v0           #i0:I
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    .end local v3           #i3:I
    .end local v5           #ip:I
    .restart local v0       #i0:I
    .local v2, ip:I
    .restart local p0       #in:Ljava/lang/String;
    :cond_2
    const/16 v3, 0x41

    move v5, v2

    .end local v2           #ip:I
    .restart local v5       #ip:I
    move v2, v3

    goto :goto_3

    .line 61
    .local v2, i2:I
    :cond_3
    const/16 v3, 0x41

    goto :goto_4

    .line 65
    .restart local v3       #i3:I
    :cond_4
    sget-object v9, Lcom/android/music/common/util/Base64Decoder;->map2:[B

    aget-byte v0, v9, v0

    .line 66
    .local v0, b0:I
    sget-object v9, Lcom/android/music/common/util/Base64Decoder;->map2:[B

    aget-byte v1, v9, v1

    .line 67
    .local v1, b1:I
    sget-object v9, Lcom/android/music/common/util/Base64Decoder;->map2:[B

    aget-byte v2, v9, v2

    .line 68
    .local v2, b2:I
    sget-object v9, Lcom/android/music/common/util/Base64Decoder;->map2:[B

    aget-byte v3, v9, v3

    .line 69
    .local v3, b3:I
    if-ltz v0, :cond_5

    if-ltz v1, :cond_5

    if-ltz v2, :cond_5

    if-gez v3, :cond_6

    .line 70
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #in:Ljava/lang/String;
    const-string v0, "Illegal character in Base64 encoded data."

    .end local v0           #b0:I
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    .restart local v0       #b0:I
    .restart local p0       #in:Ljava/lang/String;
    :cond_6
    shl-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v9, v1, 0x4

    or-int/2addr v0, v9

    .line 73
    .local v0, o0:I
    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v9, v2, 0x2

    or-int/2addr v1, v9

    .line 74
    .local v1, o1:I
    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v2, v3

    .line 75
    .local v2, o2:I
    add-int/lit8 v3, v7, 0x1

    .end local v7           #op:I
    .local v3, op:I
    int-to-byte v0, v0

    aput-byte v0, v8, v7

    .line 76
    .end local v0           #o0:I
    if-ge v3, v6, :cond_9

    .line 77
    add-int/lit8 v0, v3, 0x1

    .end local v3           #op:I
    .local v0, op:I
    int-to-byte v1, v1

    aput-byte v1, v8, v3

    .end local v1           #o1:I
    move v1, v0

    .line 78
    .end local v0           #op:I
    .local v1, op:I
    :goto_5
    if-ge v1, v6, :cond_8

    .line 79
    add-int/lit8 v0, v1, 0x1

    .end local v1           #op:I
    .restart local v0       #op:I
    int-to-byte v2, v2

    aput-byte v2, v8, v1

    .end local v2           #o2:I
    :goto_6
    move v7, v0

    .end local v0           #op:I
    .restart local v7       #op:I
    move v0, v5

    .line 80
    .end local v5           #ip:I
    .local v0, ip:I
    goto/16 :goto_2

    :cond_7
    move p0, v4

    .end local v4           #iLen:I
    .local p0, iLen:I
    move-object v0, v8

    .line 82
    goto/16 :goto_0

    .end local v0           #ip:I
    .end local v7           #op:I
    .restart local v1       #op:I
    .restart local v2       #o2:I
    .restart local v4       #iLen:I
    .restart local v5       #ip:I
    .local p0, in:Ljava/lang/String;
    :cond_8
    move v0, v1

    .end local v1           #op:I
    .local v0, op:I
    goto :goto_6

    .end local v0           #op:I
    .local v1, o1:I
    .restart local v3       #op:I
    :cond_9
    move v1, v3

    .end local v3           #op:I
    .local v1, op:I
    goto :goto_5

    .end local v1           #op:I
    .end local v2           #o2:I
    .end local v4           #iLen:I
    .end local v5           #ip:I
    .end local v6           #oLen:I
    .end local v8           #out:[B
    .local v0, iLen:I
    :cond_a
    move v4, v0

    .end local v0           #iLen:I
    .restart local v4       #iLen:I
    goto/16 :goto_1
.end method
