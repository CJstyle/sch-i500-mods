.class Landroid/pim/vcard/CustomBufferedReader;
.super Ljava/io/BufferedReader;
.source "VCardParser_V21.java"


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 929
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 930
    return-void
.end method


# virtual methods
.method public getTotalmillisecond()J
    .locals 2

    .prologue
    .line 942
    iget-wide v0, p0, Landroid/pim/vcard/CustomBufferedReader;->mTime:J

    return-wide v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 935
    .local v3, start:J
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 936
    .local v2, ret:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 937
    .local v0, end:J
    iget-wide v5, p0, Landroid/pim/vcard/CustomBufferedReader;->mTime:J

    sub-long v7, v0, v3

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/pim/vcard/CustomBufferedReader;->mTime:J

    .line 938
    return-object v2
.end method
