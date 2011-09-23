.class Landroid/webkit/WebView$7;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebView;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;

.field final synthetic val$dest:Ljava/io/File;

.field final synthetic val$p:Landroid/graphics/Picture;

.field final synthetic val$temp:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1702
    iput-object p1, p0, Landroid/webkit/WebView$7;->this$0:Landroid/webkit/WebView;

    iput-object p2, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    iput-object p3, p0, Landroid/webkit/WebView$7;->val$p:Landroid/graphics/Picture;

    iput-object p4, p0, Landroid/webkit/WebView$7;->val$dest:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1704
    :try_start_0
    new-instance v1, Landroid/webkit/WebView$CountingOutputStream;

    iget-object v2, p0, Landroid/webkit/WebView$7;->this$0:Landroid/webkit/WebView;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v3}, Landroid/webkit/WebView$CountingOutputStream;-><init>(Landroid/webkit/WebView;Ljava/io/OutputStream;)V

    .line 1705
    .local v1, out:Landroid/webkit/WebView$CountingOutputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$CountingOutputStream;->setIsBigFile(Z)V

    .line 1706
    iget-object v2, p0, Landroid/webkit/WebView$7;->val$p:Landroid/graphics/Picture;

    invoke-virtual {v2, v1}, Landroid/graphics/Picture;->writeToStream(Ljava/io/OutputStream;)V

    .line 1707
    invoke-virtual {v1}, Landroid/webkit/WebView$CountingOutputStream;->flush()V

    .line 1708
    invoke-virtual {v1}, Landroid/webkit/WebView$CountingOutputStream;->close()V

    .line 1711
    invoke-virtual {v1}, Landroid/webkit/WebView$CountingOutputStream;->isBigFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1712
    iget-object v2, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    iget-object v3, p0, Landroid/webkit/WebView$7;->val$dest:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1718
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    .end local v1           #out:Landroid/webkit/WebView$CountingOutputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1720
    return-void

    .line 1714
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1716
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Landroid/webkit/WebView$7;->val$dest:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1718
    iget-object v2, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/webkit/WebView$7;->val$temp:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v2
.end method
