.class Lcom/android/music/common/util/DrmPopup$1;
.super Ljava/lang/Object;
.source "DrmPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/DrmPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/util/DrmPopup;


# direct methods
.method constructor <init>(Lcom/android/music/common/util/DrmPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/music/common/util/DrmPopup$1;->this$0:Lcom/android/music/common/util/DrmPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 58
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "OnClick called!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, result:Z
    :try_start_0
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v1

    .line 64
    .local v1, manager:Landroid/drm/mobile2/OMADRMManager;
    iget-object v3, p0, Lcom/android/music/common/util/DrmPopup$1;->this$0:Lcom/android/music/common/util/DrmPopup;

    iget-object v3, v3, Lcom/android/music/common/util/DrmPopup;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/android/music/common/util/DrmPopup$1;->this$0:Lcom/android/music/common/util/DrmPopup;

    invoke-virtual {v3}, Lcom/android/music/common/util/DrmPopup;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmPopup$1;->this$0:Lcom/android/music/common/util/DrmPopup;

    iget-object v4, v4, Lcom/android/music/common/util/DrmPopup;->filePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/music/common/util/DrmPopup$1;->this$0:Lcom/android/music/common/util/DrmPopup;

    iget-object v5, v5, Lcom/android/music/common/util/DrmPopup;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/drm/mobile2/OMADRMManager;->getDCFHeaderInfo(Ljava/lang/String;)Landroid/drm/mobile2/DCFHeaderInfo;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/drm/mobile2/OMADRMManager;->acquireLicense(Landroid/content/Context;Ljava/lang/String;Landroid/drm/mobile2/DCFHeaderInfo;)Z

    move-result v2

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/android/music/common/util/DrmPopup$1;->this$0:Lcom/android/music/common/util/DrmPopup;

    invoke-virtual {v3}, Lcom/android/music/common/util/DrmPopup;->finish()V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    .end local v1           #manager:Landroid/drm/mobile2/OMADRMManager;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 70
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 72
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 74
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
