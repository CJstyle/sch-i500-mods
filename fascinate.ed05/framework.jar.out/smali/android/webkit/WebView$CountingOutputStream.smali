.class Landroid/webkit/WebView$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private fout:Ljava/io/FileOutputStream;

.field private mFilePath:Ljava/lang/String;

.field private mIsBigFile:Z

.field final synthetic this$0:Landroid/webkit/WebView;

.field private total:I


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter "out"

    .prologue
    const/4 v0, 0x0

    .line 9212
    iput-object p1, p0, Landroid/webkit/WebView$CountingOutputStream;->this$0:Landroid/webkit/WebView;

    .line 9213
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 9209
    iput-boolean v0, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    .line 9214
    iput v0, p0, Landroid/webkit/WebView$CountingOutputStream;->total:I

    .line 9215
    check-cast p2, Ljava/io/FileOutputStream;

    .end local p2
    iput-object p2, p0, Landroid/webkit/WebView$CountingOutputStream;->fout:Ljava/io/FileOutputStream;

    .line 9216
    return-void
.end method

.method private check(I)Z
    .locals 2
    .parameter "size"

    .prologue
    .line 9232
    iget v0, p0, Landroid/webkit/WebView$CountingOutputStream;->total:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/webkit/WebView$CountingOutputStream;->total:I

    .line 9233
    iget v0, p0, Landroid/webkit/WebView$CountingOutputStream;->total:I

    const v1, 0xf4240

    if-le v0, v1, :cond_0

    .line 9234
    const/4 v0, 0x0

    .line 9236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9228
    iget-object v0, p0, Landroid/webkit/WebView$CountingOutputStream;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 9229
    return-void
.end method

.method public isBigFile()Z
    .locals 1

    .prologue
    .line 9240
    iget-boolean v0, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    return v0
.end method

.method public setIsBigFile(Z)V
    .locals 0
    .parameter "isBigFile"

    .prologue
    .line 9244
    iput-boolean p1, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    .line 9245
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9219
    invoke-direct {p0, p3}, Landroid/webkit/WebView$CountingOutputStream;->check(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    if-nez v0, :cond_0

    .line 9220
    iget-object v0, p0, Landroid/webkit/WebView$CountingOutputStream;->fout:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 9225
    return-void

    .line 9222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView$CountingOutputStream;->mIsBigFile:Z

    .line 9223
    new-instance v0, Ljava/io/IOException;

    const-string v1, "file is too big."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
