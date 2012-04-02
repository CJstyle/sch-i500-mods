.class public Lcom/android/music/common/util/DrmPopup;
.super Landroid/app/Activity;
.source "DrmPopup.java"


# instance fields
.field filePath:Ljava/lang/String;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    new-instance v0, Lcom/android/music/common/util/DrmPopup$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/util/DrmPopup$1;-><init>(Lcom/android/music/common/util/DrmPopup;)V

    iput-object v0, p0, Lcom/android/music/common/util/DrmPopup;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    new-instance v0, Lcom/android/music/common/util/DrmPopup$2;

    invoke-direct {v0, p0}, Lcom/android/music/common/util/DrmPopup$2;-><init>(Lcom/android/music/common/util/DrmPopup;)V

    iput-object v0, p0, Lcom/android/music/common/util/DrmPopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0, v2}, Lcom/android/music/common/util/DrmPopup;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0}, Lcom/android/music/common/util/DrmPopup;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FILE_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/util/DrmPopup;->filePath:Ljava/lang/String;

    .line 29
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RightsConfirmation : FILE_PATH = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/util/DrmPopup;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    :try_start_0
    invoke-static {}, Landroid/wmdrm/mobile/WMDrmRightsManager;->getDefaultInstance()Landroid/wmdrm/mobile/WMDrmRightsManager;

    move-result-object v1

    .line 34
    .local v1, wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    iget-object v2, p0, Lcom/android/music/common/util/DrmPopup;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/wmdrm/mobile/WMDrmRightsManager;->isWMdrmFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a00d0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00a8

    iget-object v4, p0, Lcom/android/music/common/util/DrmPopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 54
    .end local v1           #wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :goto_0
    return-void

    .line 41
    .restart local v1       #wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a007f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00aa

    iget-object v4, p0, Lcom/android/music/common/util/DrmPopup;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ab

    iget-object v4, p0, Lcom/android/music/common/util/DrmPopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/wmdrm/mobile/WMDRMDRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 47
    .end local v1           #wmManager:Landroid/wmdrm/mobile/WMDrmRightsManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 48
    .local v0, e:Landroid/wmdrm/mobile/WMDRMDRMException;
    invoke-virtual {v0}, Landroid/wmdrm/mobile/WMDRMDRMException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0           #e:Landroid/wmdrm/mobile/WMDRMDRMException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 50
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 52
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/AlertDialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 99
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, drmDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 105
    const v1, 0x7f0a00aa

    new-instance v2, Lcom/android/music/common/util/DrmPopup$3;

    invoke-direct {v2, p0}, Lcom/android/music/common/util/DrmPopup$3;-><init>(Lcom/android/music/common/util/DrmPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    const v1, 0x7f0a00ab

    new-instance v2, Lcom/android/music/common/util/DrmPopup$4;

    invoke-direct {v2, p0}, Lcom/android/music/common/util/DrmPopup$4;-><init>(Lcom/android/music/common/util/DrmPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/music/common/util/DrmPopup;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    return-void
.end method
