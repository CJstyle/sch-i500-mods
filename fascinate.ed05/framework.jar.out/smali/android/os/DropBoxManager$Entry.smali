.class public Landroid/os/DropBoxManager$Entry;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:[B

.field private final mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mFlags:I

.field private final mTag:Ljava/lang/String;

.field private final mTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Landroid/os/DropBoxManager$Entry$1;

    invoke-direct {v0}, Landroid/os/DropBoxManager$Entry$1;-><init>()V

    sput-object v0, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6
    .parameter "tag"
    .parameter "millis"

    .prologue
    .line 71
    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .parameter "tag"
    .parameter "millis"
    .parameter "data"
    .parameter "flags"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/File;I)V
    .locals 6
    .parameter "tag"
    .parameter "millis"
    .parameter "data"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/high16 v0, 0x1000

    invoke-static {p4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 102
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JLjava/lang/Object;I)V
    .locals 4
    .parameter "tag"
    .parameter "millis"
    .parameter "value"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 107
    :cond_0
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    if-nez p4, :cond_1

    move v1, v3

    :cond_1
    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 109
    :cond_3
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 110
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 111
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 113
    if-nez p4, :cond_4

    .line 114
    iput-object v2, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 115
    iput-object v2, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 125
    .end local p4
    :goto_1
    return-void

    .line 116
    .restart local p4
    :cond_4
    instance-of v0, p4, [B

    if-eqz v0, :cond_5

    .line 117
    check-cast p4, [B

    .end local p4
    check-cast p4, [B

    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 118
    iput-object v2, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_1

    .line 119
    .restart local p4
    :cond_5
    instance-of v0, p4, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    .line 120
    iput-object v2, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 121
    check-cast p4, Landroid/os/ParcelFileDescriptor;

    .end local p4
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_1

    .line 123
    .restart local p4
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLjava/lang/Object;ILandroid/os/DropBoxManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .parameter "tag"
    .parameter "millis"
    .parameter "text"

    .prologue
    .line 76
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[BI)V
    .locals 0
    .parameter "tag"
    .parameter "millis"
    .parameter "data"
    .parameter "flags"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/lang/Object;I)V

    .line 85
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    if-eqz v1, :cond_0

    .line 165
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 171
    .local v0, is:Ljava/io/InputStream;
    :goto_0
    iget v1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v0           #is:Ljava/io/InputStream;
    :goto_1
    return-object v1

    .line 166
    :cond_0
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1

    .line 167
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 169
    .end local v0           #is:Ljava/io/InputStream;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .restart local v0       #is:Ljava/io/InputStream;
    :cond_2
    move-object v1, v0

    .line 171
    goto :goto_1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 8
    .parameter "maxBytes"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 146
    iget v3, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    move-object v3, v7

    .line 155
    :cond_0
    :goto_0
    return-object v3

    .line 147
    :cond_1
    iget-object v3, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    iget-object v5, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    array-length v5, v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v3, v4, v6, v5}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    .line 149
    :cond_2
    const/4 v2, 0x0

    .line 151
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 152
    new-array v0, p1, [B

    .line 153
    .local v0, buf:[B
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    .line 154
    .end local v0           #buf:[B
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 157
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_1
    move-object v3, v7

    .line 155
    goto :goto_0

    .line 157
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_2
    throw v3

    .restart local v1       #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public getTimeMillis()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 187
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 194
    :goto_0
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
