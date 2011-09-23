.class public Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;
.super Ljava/lang/Object;
.source "VCardComposer.java"

# interfaces
.implements Landroid/pim/vcard/VCardComposer$OneEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/vcard/VCardComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerForOutputStream"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vcard.VCardComposer.HandlerForOutputStream"


# instance fields
.field private mOnTerminateIsCalled:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mWriter:Ljava/io/Writer;

.field final synthetic this$0:Landroid/pim/vcard/VCardComposer;


# direct methods
.method public constructor <init>(Landroid/pim/vcard/VCardComposer;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter "outputStream"

    .prologue
    .line 174
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    .line 175
    iput-object p2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    .line 176
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->onTerminate()V

    .line 251
    :cond_0
    return-void
.end method

.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 4
    .parameter "vcard"

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 211
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 212
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v1, "vcard.VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred during exportOneContactData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/pim/vcard/VCardComposer;->access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const-string/jumbo v7, "vcard.VCardComposer.HandlerForOutputStream"

    .line 180
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    iget-object v5, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-static {v5}, Landroid/pim/vcard/VCardComposer;->access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-static {v2}, Landroid/pim/vcard/VCardComposer;->access$200(Landroid/pim/vcard/VCardComposer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    :try_start_1
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    const-string v4, "-1"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/pim/vcard/VCardComposer;->access$300(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 205
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 182
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 183
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "vcard.VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-static {v3}, Landroid/pim/vcard/VCardComposer;->access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoding is not supported (usually this does not happen!): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    invoke-static {v4}, Landroid/pim/vcard/VCardComposer;->access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/pim/vcard/VCardComposer;->access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    move v2, v6

    .line 186
    goto :goto_0

    .line 193
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 194
    .local v0, e:Landroid/pim/vcard/exception/VCardException;
    const-string/jumbo v2, "vcard.VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VCardException has been thrown during on Init(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 196
    goto :goto_0

    .line 197
    .end local v0           #e:Landroid/pim/vcard/exception/VCardException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 198
    .local v0, e:Ljava/io/IOException;
    const-string/jumbo v2, "vcard.VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException occurred during exportOneContactData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->this$0:Landroid/pim/vcard/VCardComposer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/pim/vcard/VCardComposer;->access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;

    move v2, v6

    .line 202
    goto/16 :goto_0
.end method

.method public onTerminate()V
    .locals 4

    .prologue
    .line 222
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOnTerminateIsCalled:Z

    .line 223
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 228
    :try_start_0
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 229
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    instance-of v1, v1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mOutputStream:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 234
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v1, "vcard.VCardComposer.HandlerForOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException during closing the output stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :try_start_3
    iget-object v1, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 240
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    goto :goto_0

    .line 238
    :catchall_0
    move-exception v1

    .line 239
    :try_start_4
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;->mWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 238
    :goto_1
    throw v1

    .line 240
    :catch_2
    move-exception v2

    goto :goto_1
.end method
